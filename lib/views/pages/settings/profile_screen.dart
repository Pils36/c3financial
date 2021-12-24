import 'package:c3financial/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController familyConnectController = TextEditingController();

  final items = [
    'Holiness Family',
    'Peace Family',
    'Faith Family',
    'Loyalty Family',
    'Excellence Family',
    'Power Family',
    'Joy Family'
  ];

  String? value;

  bool isButtonActive = false;

  void _submit() {
    final isValid = _formKey.currentState!.validate();

    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();

    // Run async call

    print(nameController.text);
    print(familyConnectController.text);
    print(emailController.text);

    showSnackBar(
        'Great!', 'Your name is updated as ' + nameController.text, true);
  }

  @override
  void initState() {
    super.initState();

    nameController.addListener(() {
      final isButtonActive = nameController.text.isNotEmpty &&
          familyConnectController.text.isNotEmpty;

      setState(() {
        this.isButtonActive = isButtonActive;
      });
    });
    familyConnectController.addListener(() {
      final isButtonActive = familyConnectController.text.isNotEmpty &&
          nameController.text.isNotEmpty;
      setState(() {
        this.isButtonActive = isButtonActive;
      });
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    familyConnectController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      backgroundColor: const Color(0xFFE5E5E5),
    );
  }

  getBody() {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset('assets/icons/arrow_back.png',
                        width: 30, height: 30),
                  ),
                  const Text('Profile',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  const Text(''),
                ],
              ),
            ),
            Container(
              width: 360,
              height: 630,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Edit your Profile',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 60),
                        TextFormField(
                          controller: nameController,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFFFFFFF),
                            labelText: 'Your Name',
                            labelStyle: TextStyle(fontSize: 14),
                            floatingLabelStyle:
                                TextStyle(color: Color(0xFF00A9B7)),
                            contentPadding: EdgeInsets.all(5),
                          ),
                        ),
                        const SizedBox(height: 80),
                        TextFormField(
                          initialValue: 'topeawofisayo@gmail.com',
                          readOnly: true,
                          onSaved: (value) {
                            emailController.text = value!;
                          },
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFFFFFFF),
                            hintText: 'topeawofisayo@gmail.com',
                            labelStyle: TextStyle(fontSize: 14),
                            contentPadding: EdgeInsets.all(5),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 80),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: DropdownButton<String>(
                            hint: const Text('Family you belong to'),
                            isExpanded: true,
                            iconSize: 24,
                            icon: const ImageIcon(
                                AssetImage('assets/icons/arrow_down.png')),
                            value: value,
                            items: items.map(buildMenuItem).toList(),
                            elevation: 0,
                            onChanged: (value) => setState(() {
                              this.value = value;
                              familyConnectController.text = value!;
                            }),
                          ),
                        ),
                        const SizedBox(height: 80),
                        Container(
                          width: 360,
                          height: 52,
                          decoration: BoxDecoration(
                            color: isButtonActive == false
                                ? const Color(0xFFCACACA)
                                : const Color(0xFF000000),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextButton(
                            onPressed: () => isButtonActive == false
                                ? showSnackBar(
                                    'Oops!', 'All fields are required!', false)
                                : _submit(),
                            child: const Text(
                              "Save",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(item),
      );

  showSnackBar(String title, String message, bool state) {
    return Get.snackbar(
      title,
      '',
      snackPosition: SnackPosition.TOP,
      backgroundColor: mLightGrey,
      messageText: Text(
        message,
        style: state == false
            ? const TextStyle(color: Colors.red)
            : const TextStyle(color: Colors.green),
      ),
      duration: const Duration(seconds: 2),
    );
  }
}
