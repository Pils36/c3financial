import 'package:c3financial/constants/colors.dart';
import 'package:c3financial/constants/styles.dart';
import 'package:c3financial/views/bottom/bottom_nav.dart';
import 'package:c3financial/views/pages/authentication/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/utils.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isButtonActive = false;

  void _submit() {
    final isValid = _formKey.currentState!.validate();

    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
    // Run Async call
    print(nameController.text);
    print(emailController.text);
    print(passwordController.text);

    Get.to(() => const BottomNav());
    Get.offAll(const BottomNav());
  }

  @override
  void initState() {
    super.initState();

    nameController.addListener(() {
      final isButtonActive = nameController.text.isNotEmpty &&
          emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty;

      setState(() {
        this.isButtonActive = isButtonActive;
      });
    });

    emailController.addListener(() {
      final isButtonActive = emailController.text.isNotEmpty &&
          nameController.text.isNotEmpty &&
          passwordController.text.isNotEmpty;

      setState(() {
        this.isButtonActive = isButtonActive;
      });
    });
    passwordController.addListener(() {
      final isButtonActive = passwordController.text.isNotEmpty &&
          nameController.text.isNotEmpty &&
          emailController.text.isNotEmpty;
      setState(() {
        this.isButtonActive = isButtonActive;
      });
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: getBody());
  }

  getBody() {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Create account ✌️",
                        style: titleFont,
                      ),
                      Text(
                        "Welcome to the Communion Global App, Please create an account with",
                        style: bodyFont,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () => {print('Google')},
                        child: const Image(
                            image: AssetImage('assets/icons/google.png')),
                      ),
                      TextButton(
                        onPressed: () => {print('Apple')},
                        child: const Image(
                            image: AssetImage('assets/icons/apple.png')),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  TextButton(
                    onPressed: () => {},
                    child: const Text(
                      "Or sign up with your email",
                      style: TextStyle(
                          color: Color(0xFFA9AEB2),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15),
                      TextFormField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFFFFFF),
                          prefixIcon:
                              ImageIcon(AssetImage("assets/icons/user.png")),
                          labelText: 'Your name',
                          labelStyle: TextStyle(fontSize: 14),
                          floatingLabelStyle:
                              TextStyle(color: Color(0xFF00A9B7)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFFA9AEB2), width: 0.1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF00A9B7), width: 1.0),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          contentPadding: EdgeInsets.all(5),
                        ),
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFFFFFF),
                          prefixIcon:
                              ImageIcon(AssetImage("assets/icons/mail.png")),
                          labelText: 'Your email',
                          labelStyle: TextStyle(fontSize: 14),
                          floatingLabelStyle:
                              TextStyle(color: Color(0xFF00A9B7)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFFA9AEB2), width: 0.1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF00A9B7), width: 1.0),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          contentPadding: EdgeInsets.all(5),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value)) {
                            return 'Enter a valid email address';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        controller: passwordController,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFFFFFF),
                          prefixIcon:
                              ImageIcon(AssetImage("assets/icons/lock.png")),
                          labelText: 'Your password',
                          labelStyle: TextStyle(fontSize: 14),
                          floatingLabelStyle:
                              TextStyle(color: Color(0xFF00A9B7)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFFA9AEB2), width: 0.1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF00A9B7), width: 1.0),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          contentPadding: EdgeInsets.all(5),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter a valid password';
                          } else if (value.length < 6) {
                            return 'Password must be at least 6 character';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
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
                          ? showSnackBar('Oops!', 'All fields are required!')
                          : _submit(),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text("By continuing, you agree to our "),
                  const Text(
                    "Terms & Conditions",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 96),
                  GestureDetector(
                    onTap: () => {Get.to(() => const SignIn())},
                    child: const Text(
                      "I already have an account",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  showSnackBar(String title, String message) {
    return Get.snackbar(
      title,
      '',
      snackPosition: SnackPosition.TOP,
      backgroundColor: mLightGrey,
      messageText: Text(
        message,
        style: const TextStyle(color: Colors.red),
      ),
      duration: const Duration(seconds: 2),
    );
  }
}
