import 'package:c3financial/constants/styles.dart';
import 'package:c3financial/views/pages/authentication/recoverycode.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/utils.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  getAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: const Text(
        "Reset password",
        style: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 16),
        onPressed: () => {
          Navigator.pop(context),
        },
      ),
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
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Stack(
              children: [
                Column(
                  children: [
                    const SizedBox(height: 60),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Reset your password",
                              style: titleFont,
                            ),
                            SizedBox(width: 10),
                            Image(
                              image: AssetImage('assets/icons/emojilock.png'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Enter your email and a verification code to reset the password will be sent to your email.",
                          style: bodyFont,
                        ),
                        const SizedBox(height: 56),
                        TextFormField(
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
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    Container(
                      width: 360,
                      height: 52,
                      decoration: BoxDecoration(
                        color: const Color(0xFFCACACA),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextButton(
                        onPressed: () => {Get.to(() => const RecoveryCode())},
                        child: const Text(
                          "Send verification code",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(height: 350),
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
    );
  }
}
