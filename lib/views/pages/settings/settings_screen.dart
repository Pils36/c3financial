import 'package:c3financial/views/pages/authentication/signin.dart';
import 'package:c3financial/views/pages/settings/changepassword_screen.dart';
import 'package:c3financial/views/pages/settings/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share/share.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Center(
                  child: Text('Settings',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                ),
              ],
            ),
          ),
          settingsItem(
              'Profile', 'assets/icons/right.png', const ProfileScreen()),
          settingsItem('Change Password', 'assets/icons/right.png',
              const ChangePassword()),
          shareMe('Share with Friends', 'assets/icons/shareseend.png'),
          settingsItem('Logout', 'assets/icons/signout.png', const SignIn()),
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

  shareMe(String title, String image) {
    return GestureDetector(
      onTap: (() {
        Share.share(
            'Download on Google PlayStore https://play.google.com/store/ or AppStore https://applestore.com/store/',
            subject: 'C3 Financial');
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
              Image.asset(image, width: 25, height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
