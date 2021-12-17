import 'package:c3financial/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      body: getBody(context),
    );
  }

  getBody(context) {
    var size = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              Container(
                width: size,
                height: 300,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 50, bottom: 30, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Welcome Back",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontFamily: 'DM Sans',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Tope Awofisayo",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'DM Sans',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                  child: Image.asset(
                                      'assets/icons/settingsicon.png',
                                      width: 35,
                                      height: 35),
                                  onTap: () => {}),
                              const SizedBox(width: 10),
                              InkWell(
                                  child: Image.asset(
                                      'assets/icons/notificationicon.png',
                                      width: 35,
                                      height: 35),
                                  onTap: () => {}),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(20.0),
                        width: 327,
                        height: 172,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text("Total Tithe Paid",
                                    style: TextStyle(
                                        color: Color(0xFFC4C4C4),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14)),
                                Text("100,000.84",
                                    style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18)),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Divider(height: 1, thickness: 1),
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        child: Image.asset(
                                            'assets/icons/sendicon.png'),
                                        width: 46,
                                        height: 46,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFF9F9F9),
                                          shape: BoxShape.circle,
                                        )),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "Message",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                        child: Image.asset(
                                            'assets/icons/tithe.png'),
                                        width: 46,
                                        height: 46,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFF9F9F9),
                                          shape: BoxShape.circle,
                                        )),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "Tithe",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                        child: Image.asset(
                                            'assets/icons/seed.png'),
                                        width: 46,
                                        height: 46,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFF9F9F9),
                                          shape: BoxShape.circle,
                                        )),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "Seed",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                        child: Image.asset(
                                            'assets/icons/history.png'),
                                        width: 46,
                                        height: 46,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFF9F9F9),
                                          shape: BoxShape.circle,
                                        )),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "History",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
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
