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
      physics: const ClampingScrollPhysics(),
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        margin: const EdgeInsets.only(top: 100, bottom: 100),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                myColumCard('assets/icons/givetithe.png', 'Give your Tithe',
                    const GiveTithe()),
                myColumCard('assets/icons/partnership.png', 'Be a Partner',
                    const GiveTithe()),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                myColumCard('assets/icons/sowseed.png', 'Sow a seed',
                    const GiveTithe()),
                myColumCard('assets/icons/setman.png', 'Give to set man',
                    const GiveTithe()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  myColumCard(String image, String title, Widget widget) {
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
              padding: const EdgeInsets.only(top: 30, bottom: 30),
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
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
