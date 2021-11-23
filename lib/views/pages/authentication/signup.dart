import 'package:c3financial/constants/styles.dart';
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
                        color: Color(0xFFA9AEB2), fontWeight: FontWeight.w500),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                        prefixIcon:
                            ImageIcon(AssetImage("assets/icons/user.png")),
                        labelText: 'Your name',
                        labelStyle: TextStyle(fontSize: 14),
                        floatingLabelStyle: TextStyle(color: Color(0xFF00A9B7)),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFA9AEB2), width: 0.1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFF00A9B7), width: 1.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        contentPadding: EdgeInsets.all(5),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                        prefixIcon:
                            ImageIcon(AssetImage("assets/icons/mail.png")),
                        labelText: 'Your email',
                        labelStyle: TextStyle(fontSize: 14),
                        floatingLabelStyle: TextStyle(color: Color(0xFF00A9B7)),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFA9AEB2), width: 0.1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFF00A9B7), width: 1.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        contentPadding: EdgeInsets.all(5),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                        prefixIcon:
                            ImageIcon(AssetImage("assets/icons/lock.png")),
                        labelText: 'Your password',
                        labelStyle: TextStyle(fontSize: 14),
                        floatingLabelStyle: TextStyle(color: Color(0xFF00A9B7)),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFA9AEB2), width: 0.1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFF00A9B7), width: 1.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        contentPadding: EdgeInsets.all(5),
                      ),
                      obscureText: true,
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  width: 360,
                  height: 52,
                  decoration: BoxDecoration(
                    color: const Color(0xFFCACACA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                    onPressed: () => {},
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
    );
  }
}
