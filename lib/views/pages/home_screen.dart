import 'dart:convert';

import 'package:c3financial/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mLightGrey,
      body: getBody(),
    );
  }

  getBody() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Users Name, Settings and Notifications
          SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(top: 35, left: 10, right: 5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (() => {
                              showSnackBar(
                                  "Profile", "Screen under construction")
                            }),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage(
                                  "assets/images/inapp/profilepicture.png"),
                              radius: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Adebambo A.",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Lagos, Church",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: (() => {
                                  showSnackBar("Notification",
                                      "Screen under construction")
                                }),
                            icon: const ImageIcon(
                              AssetImage('assets/icons/notification.png'),
                              size: 20,
                            ),
                          ),
                          Container(height: 30, width: 2, color: mGrey),
                          IconButton(
                            onPressed: (() => {
                                  showSnackBar(
                                      "Settings", "Screen under construction")
                                }),
                            icon: const ImageIcon(
                              AssetImage('assets/icons/settings.png'),
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //Users Wallet/Payment Info
          Container(
            height: 200,
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: const BoxDecoration(
              color: mBackgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "My Tithe",
                        style: TextStyle(color: Colors.grey),
                      ),
                      IconButton(
                        onPressed: (() => {}),
                        icon: const ImageIcon(
                          AssetImage('assets/icons/eye.png'),
                          size: 20,
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SizedBox(
                          width: 150,
                          child: Text(
                            '\$30.00',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w500,),
                            overflow: TextOverflow.ellipsis,
                          )),
                      Image(
                        image: AssetImage("assets/logo/ccc_logo.png"),
                        width: 30,
                        height: 30,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: mLightGreen, shape: BoxShape.circle),
                            child: IconButton(
                                onPressed: (() => {
                                  showSnackBar(
                                      "Pay Tithe", "Module under construction")
                                }),
                                icon: const ImageIcon(
                                  AssetImage('assets/icons/download.png'),
                                  size: 25,
                                )),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text("Pay Tithe"),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xF1FFE7F7),
                                shape: BoxShape.circle),
                            child: IconButton(
                                onPressed: (() => {
                                  showSnackBar(
                                      "Seed", "Module under construction")
                                }),
                                icon: const ImageIcon(
                                  AssetImage('assets/icons/plus-square.png'),
                                  size: 25,
                                )),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text("Seed"),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xD7CDE3FF),
                                shape: BoxShape.circle),
                            child: IconButton(
                                onPressed: (() => {
                                  showSnackBar(
                                      "Message", "Module under construction")
                                }),
                                icon: const ImageIcon(
                                  AssetImage('assets/icons/send.png'),
                                  size: 25,
                                )),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text("Message"),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFFDEE2FF),
                                shape: BoxShape.circle),
                            child: IconButton(
                                onPressed: (() => {
                                  showSnackBar(
                                      "Transactions", "Module under construction")
                                }),
                                icon: const ImageIcon(
                                  AssetImage('assets/icons/file-text.png'),
                                  size: 25,
                                )),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text("Transaction"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          //  Users Recent Transactions
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10, top: 30),
            decoration: const BoxDecoration(
              color: mBackgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Recent transactions",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                        onPressed: (() => {}),
                        child: const Text(
                          "See all",
                          style: TextStyle(color: mGrey),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0.2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: const BoxDecoration(
                                color: mLightGreen, shape: BoxShape.circle),
                            child: IconButton(
                                onPressed: (() => {}),
                                icon: const ImageIcon(
                                  AssetImage('assets/icons/credit-card.png'),
                                  size: 30,
                                )),
                          ),
                          const SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Tithe",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                              Text("One-time payment",
                                  style: TextStyle(color: mGrey)),
                              Text("\$10.00",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.green))
                            ],
                          ),
                        ],
                      ),
                      const Text(
                        "4 days ago",
                        style: TextStyle(fontSize: 13, color: mGrey),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0.5,
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: const BoxDecoration(
                                color: mLightRed, shape: BoxShape.circle),
                            child: IconButton(
                                onPressed: (() => {}),
                                icon: const ImageIcon(
                                  AssetImage('assets/icons/arrow-down.png'),
                                  size: 30,
                                )),
                          ),
                          const SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Seed",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                              Text("Partnership seed",
                                  style: TextStyle(color: mGrey)),
                              Text("\$5.00",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.red))
                            ],
                          ),
                        ],
                      ),
                      const Text(
                        "3 weeks ago",
                        style: TextStyle(fontSize: 13, color: mGrey),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0.5,
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: const BoxDecoration(
                                color: mLightRed, shape: BoxShape.circle),
                            child: IconButton(
                                onPressed: (() => {}),
                                icon: const ImageIcon(
                                  AssetImage('assets/icons/arrow-down.png'),
                                  size: 30,
                                )),
                          ),
                          const SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Seed",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                              Text("Partnership seed",
                                  style: TextStyle(color: mGrey)),
                              Text("\$5.00",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.red))
                            ],
                          ),
                        ],
                      ),
                      const Text(
                        "1 month ago",
                        style: TextStyle(fontSize: 13, color: mGrey),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0.5,
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: const BoxDecoration(
                                color: mLightGreen, shape: BoxShape.circle),
                            child: IconButton(
                                onPressed: (() => {}),
                                icon: const ImageIcon(
                                  AssetImage('assets/icons/credit-card.png'),
                                  size: 30,
                                )),
                          ),
                          const SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Tithe",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                              Text("One-time payment",
                                  style: TextStyle(color: mGrey)),
                              Text("\$10.00",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.green))
                            ],
                          ),
                        ],
                      ),
                      const Text(
                        "1 month ago",
                        style: TextStyle(fontSize: 13, color: mGrey),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0.5,
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: const BoxDecoration(
                                color: mLightRed, shape: BoxShape.circle),
                            child: IconButton(
                                onPressed: (() => {}),
                                icon: const ImageIcon(
                                  AssetImage('assets/icons/arrow-down.png'),
                                  size: 30,
                                )),
                          ),
                          const SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Seed",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                              Text("Partnership seed",
                                  style: TextStyle(color: mGrey)),
                              Text("\$5.00",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.red))
                            ],
                          ),
                        ],
                      ),
                      const Text(
                        "2 months ago",
                        style: TextStyle(fontSize: 13, color: mGrey),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0.5,
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: const BoxDecoration(
                                color: mLightGreen, shape: BoxShape.circle),
                            child: IconButton(
                                onPressed: (() => {}),
                                icon: const ImageIcon(
                                  AssetImage('assets/icons/credit-card.png'),
                                  size: 30,
                                )),
                          ),
                          const SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Tithe",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                              Text("One-time payment",
                                  style: TextStyle(color: mGrey)),
                              Text("\$10.00",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.green))
                            ],
                          ),
                        ],
                      ),
                      const Text(
                        "2 months ago",
                        style: TextStyle(fontSize: 13, color: mGrey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
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
      messageText: Text(message, style: const TextStyle(color: Colors.red),),
      duration: const Duration(seconds: 2),
    );
  }
}
