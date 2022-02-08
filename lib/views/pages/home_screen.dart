import 'package:c3financial/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(context),
    );
  }

  getBody(context) {
    var size = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              Container(
                width: size,
                height: 150,
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
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 120, left: 20),
                child: Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    width: 350,
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
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                    child:
                                        Image.asset('assets/icons/tithe.png'),
                                    width: 46,
                                    height: 46,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFE9E9E9),
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
                                    child: Image.asset('assets/icons/seed.png'),
                                    width: 46,
                                    height: 46,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFE9E9E9),
                                      shape: BoxShape.circle,
                                    )),
                                const SizedBox(height: 10),
                                const Text(
                                  "Partnership",
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
                                        'assets/icons/sendicon.png'),
                                    width: 46,
                                    height: 46,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFE9E9E9),
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
                                    child:
                                        Image.asset('assets/icons/history.png'),
                                    width: 46,
                                    height: 46,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFE9E9E9),
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
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 25),
            child: Column(
              children: const [
                Text('Recent Transactions',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.blueGrey)),
              ],
            ),
          ),
          getRecentTransactions('Tithe', '2 days ago',
              'assets/icons/titheblack.png', '5,0000.00'),
          getRecentTransactions('Partnership', '2 days ago',
              'assets/icons/seedblack.png', '5,0000.00'),
          getRecentTransactions('Tithe', '2 days ago',
              'assets/icons/titheblack.png', '5,0000.00'),
          getRecentTransactions('Partnership', '2 days ago',
              'assets/icons/seedblack.png', '5,0000.00'),
          getRecentTransactions('Tithe', '2 days ago',
              'assets/icons/titheblack.png', '5,0000.00'),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  getRecentTransactions(
      String title, String period, String image, String amount) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 5,
        bottom: 5,
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        width: 350,
        height: 80,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image(
                  image: AssetImage(image),
                  width: 36,
                  height: 36,
                ),
                const SizedBox(width: 10),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(title,
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16)),
                      const Text('2 days ago',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12)),
                    ]),
              ],
            ),
            Text(amount,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
          ],
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
