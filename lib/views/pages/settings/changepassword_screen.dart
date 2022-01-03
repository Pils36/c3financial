import 'package:c3financial/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController oldpasswordController = TextEditingController();
  TextEditingController newpasswordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  bool isButtonActive = false;

  void _submit() {
    final isValid = _formKey.currentState!.validate();

    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();

    // Run async call

    print(oldpasswordController.text);
    print(newpasswordController.text);
    print(confirmpasswordController.text);

    showSnackBar('Great!', 'Password successfully changed', true);
  }

  @override
  void initState() {
    super.initState();

    oldpasswordController.addListener(() {
      final isButtonActive = oldpasswordController.text.isNotEmpty &&
          newpasswordController.text.isNotEmpty &&
          confirmpasswordController.text.isNotEmpty;

      setState(() {
        this.isButtonActive = isButtonActive;
      });
    });
    newpasswordController.addListener(() {
      final isButtonActive = newpasswordController.text.isNotEmpty &&
          oldpasswordController.text.isNotEmpty &&
          confirmpasswordController.text.isNotEmpty;
      setState(() {
        this.isButtonActive = isButtonActive;
      });
    });
    confirmpasswordController.addListener(() {
      final isButtonActive = confirmpasswordController.text.isNotEmpty &&
          oldpasswordController.text.isNotEmpty &&
          newpasswordController.text.isNotEmpty;
      setState(() {
        this.isButtonActive = isButtonActive;
      });
    });
  }

  @override
  void dispose() {
    oldpasswordController.dispose();
    newpasswordController.dispose();
    confirmpasswordController.dispose();
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
                  const Text('Change Password',
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
                          'Password',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 60),
                        TextFormField(
                          controller: oldpasswordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFFFFFFF),
                            labelText: 'Current Password',
                            labelStyle: TextStyle(fontSize: 14),
                            floatingLabelStyle:
                                TextStyle(color: Color(0xFF00A9B7)),
                            contentPadding: EdgeInsets.all(5),
                            prefixIcon:
                                ImageIcon(AssetImage("assets/icons/lock.png")),
                          ),
                        ),
                        const SizedBox(height: 80),
                        TextFormField(
                          controller: newpasswordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFFFFFFF),
                            labelText: 'New Password',
                            labelStyle: TextStyle(fontSize: 14),
                            floatingLabelStyle:
                                TextStyle(color: Color(0xFF00A9B7)),
                            contentPadding: EdgeInsets.all(5),
                            prefixIcon:
                                ImageIcon(AssetImage("assets/icons/lock.png")),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter a valid password';
                            } else if (value.length < 6) {
                              return 'Password must be at least 6 character';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 80),
                        TextFormField(
                          controller: confirmpasswordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFFFFFFF),
                            labelText: 'Confirm Password',
                            labelStyle: TextStyle(fontSize: 14),
                            floatingLabelStyle:
                                TextStyle(color: Color(0xFF00A9B7)),
                            contentPadding: EdgeInsets.all(5),
                            prefixIcon:
                                ImageIcon(AssetImage("assets/icons/lock.png")),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Confirm your password';
                            } else if (value.length < 6) {
                              return 'Password must be at least 6 character';
                            } else if (confirmpasswordController.text !=
                                newpasswordController.text) {
                              return 'Password does not match the new password';
                            }
                            return null;
                          },
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
