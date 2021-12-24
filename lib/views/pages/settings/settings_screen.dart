import 'package:c3financial/constants/colors.dart';
import 'package:c3financial/views/pages/authentication/signin.dart';
import 'package:c3financial/views/pages/settings/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      backgroundColor: const Color(0xFFE5E5E5),
    );
  }

  getBody() {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/icons/arrow_back.png',
                    width: 30, height: 30),
                const Text('Settings',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                const Text(''),
              ],
            ),
          ),
          settingsItem(
              'Profile', 'assets/icons/iconright.png', const ProfileScreen()),
          settingsItem('Change Password', 'assets/icons/iconright.png',
              const ProfileScreen()),
          settingsItem('Transaction Pin', 'assets/icons/iconright.png',
              const ProfileScreen()),
          settingsItem('Share with Friends', 'assets/icons/share.png',
              const ProfileScreen()),
          settingsItem('Logout', 'assets/icons/logout.png', const SignIn()),
          const SizedBox(height: 80),
          const Text(
            'Communion App \nVersion 1.1',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  settingsItem(String title, String image, Widget screen) {
    return GestureDetector(
      onTap: (() {
        Get.to(() => screen);
        if (title == 'Logout') {
          Get.offAll(screen);
        }
      }),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10),
        child: Container(
          padding: const EdgeInsets.all(20),
          width: 370,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              Image.asset(image, width: 20, height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
