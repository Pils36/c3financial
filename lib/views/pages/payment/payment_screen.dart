import 'package:c3financial/views/pages/payment/givetithe_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  getAppBar() {
    return AppBar(
      title: const Text("Payment"),
      backgroundColor: Colors.black,
      elevation: 0,
    );
  }

  getBody() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        margin: const EdgeInsets.only(top: 20, bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Select Payment Type",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.blueGrey,
                      )),
                  Text("Please choose payment type"),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                myColumCard('assets/icons/givetithe.png', 'Give your Tithe',
                    const GiveTithe(), 'Leviticus 27:30'),
                myColumCard('assets/icons/partnership.png', 'Be a Partner',
                    const GiveTithe(), '1 Corinthians 3:9'),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                myColumCard('assets/icons/sowseed.png', 'Sow a seed',
                    const GiveTithe(), 'Galatians 6:7'),
                myColumCard('assets/icons/setman.png', 'Give to set man',
                    const GiveTithe(), 'Hebrews 13:17'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  myColumCard(String image, String title, Widget widget, String subText) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () => {Get.to(() => widget)},
          child: Container(
            height: 170,
            width: 170,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Image(
                    image: AssetImage(image),
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    subText,
                    style: const TextStyle(fontSize: 12, color: Colors.red),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
