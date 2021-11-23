import 'package:c3financial/constants/styles.dart';
import 'package:c3financial/views/pages/authentication/signup.dart';
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
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
            child: Column(
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
                    TextButton(
                      onPressed: () => {},
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
                    color: const Color(0xFFCACACA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                    onPressed: () => {},
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
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
                const SizedBox(height: 300),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
