import 'package:c3financial/constants/styles.dart';
import 'package:c3financial/views/pages/authentication/signin.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:get/get.dart';

class AllDone extends StatelessWidget {
  const AllDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
    );
  }

  getBody() {
    return Stack(
      children: [
        Positioned(
          top: 100,
          left: 50,
          right: 50,
          child: Column(
            children: [
              const Image(
                image: AssetImage('assets/icons/alldone.gif'),
                width: 500,
                height: 500,
                fit: BoxFit.contain,
              ),
              TextButton(
                  onPressed: () => {Get.to(() => const SignIn())},
                  child: Column(
                    children: const [
                      Text(
                        "All Done!",
                        style: titleFont,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "You can go ahead and Sign In",
                        style: TextStyle(
                            color: Color(0xFF3FBDC7),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
