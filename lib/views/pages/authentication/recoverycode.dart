import 'package:c3financial/constants/colors.dart';
import 'package:c3financial/constants/styles.dart';
import 'package:c3financial/views/pages/authentication/setnew_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/utils.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class RecoveryCode extends StatefulWidget {
  const RecoveryCode({Key? key}) : super(key: key);

  @override
  State<RecoveryCode> createState() => _RecoveryCodeState();
}

class _RecoveryCodeState extends State<RecoveryCode> {
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
        "Verify",
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
                              "Recovery code",
                              style: titleFont,
                            ),
                            SizedBox(width: 10),
                            Image(
                              image: AssetImage('assets/icons/recovery.png'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Check your inbox, we have sent the Verification code to your email.",
                          style: bodyFont,
                        ),
                        const SizedBox(height: 56),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: PinCodeTextField(
                            appContext: context,
                            keyboardType: TextInputType.number,
                            length: 4,
                            obscureText: true,
                            obscuringCharacter: '●',
                            animationType: AnimationType.fade,
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(5),
                              fieldHeight: 60,
                              fieldWidth: 60,
                              activeFillColor: Colors.white,
                              inactiveFillColor: Colors.white,
                              inactiveColor: Colors.white,
                              selectedColor: Colors.white,
                              selectedFillColor: Colors.white,
                            ),
                            animationDuration:
                                const Duration(milliseconds: 300),
                            backgroundColor: mLightGrey,
                            enableActiveFill: true,
                            onCompleted: (v) {
                              showSnackBar('Success', "Verified your code $v");
                            },
                            onChanged: (value) {
                              print(value);
                            },
                            beforeTextPaste: (text) {
                              print("Allowing to paste $text");
                              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                              //but you can show anything you want here, like your pop up saying wrong paste format or etc
                              return true;
                            },
                          ),
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
                        onPressed: () => {Get.to(() => const NewPassword())},
                        child: const Text(
                          "Verify",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Didn’t receive any code? "),
                        GestureDetector(
                          onTap: () =>
                              {showSnackBar('Success', 'Recovery code sent')},
                          child: const Text(
                            "Resend code",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
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

  showSnackBar(String title, String message) {
    return Get.snackbar(
      title,
      '',
      snackPosition: SnackPosition.TOP,
      backgroundColor: mLightGrey,
      messageText: Text(
        message,
        style: const TextStyle(color: Colors.black),
      ),
      duration: const Duration(seconds: 2),
    );
  }
}
