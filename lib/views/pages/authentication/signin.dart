import 'package:c3financial/constants/colors.dart';
import 'package:c3financial/constants/styles.dart';
import 'package:c3financial/views/bottom/bottom_nav.dart';
import 'package:c3financial/views/pages/authentication/forgot_password.dart';
import 'package:c3financial/views/pages/authentication/signup.dart';
// import 'package:c3financial/views/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/utils.dart';
import 'package:get/get.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
    print(emailController.text);
    print(passwordController.text);

    Get.to(() => const BottomNav());
    Get.offAll(const BottomNav());
    // Get.to(() => const HomeScreen());
    // Get.offAll(const HomeScreen());
  }

  @override
  void initState() {
    super.initState();

    emailController.addListener(() {
      final isButtonActive =
          emailController.text.isNotEmpty && passwordController.text.isNotEmpty;

      setState(() {
        this.isButtonActive = isButtonActive;
      });
    });
    passwordController.addListener(() {
      final isButtonActive =
          passwordController.text.isNotEmpty && emailController.text.isNotEmpty;
      setState(() {
        this.isButtonActive = isButtonActive;
      });
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  getBody() {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 30, left: 20, right: 20, bottom: 30),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Login to account✌️",
                            style: titleFont,
                          ),
                          Text(
                            "Welcome to the Communion Global App, remember to keep your password secrete. Please login with",
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
                          "Or login with your email",
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
                            controller: emailController,
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFFFFFFF),
                              prefixIcon: ImageIcon(
                                  AssetImage("assets/icons/mail.png")),
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
                              prefixIcon: ImageIcon(
                                  AssetImage("assets/icons/lock.png")),
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
                          TextButton(
                            onPressed: () =>
                                {Get.to(() => const ForgotPassword())},
                            child: const Text(
                              "Forgot password",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF00A9B7)),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
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
                                  'Oops!', 'All fields are required!')
                              : _submit(),
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      GestureDetector(
                        onTap: () => {Get.to(() => const SignUp())},
                        child: const Text(
                          "I don't have an account",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ),
                      const SizedBox(height: 270),
                    ],
                  ),
                  const Positioned(
                    bottom: 10,
                    left: 50,
                    right: 50,
                    child: Text(
                      "Communion Christian Centre Global",
                      textAlign: TextAlign.center,
                    ),
                  ),
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
