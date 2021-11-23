import 'package:c3financial/constants/colors.dart';
import 'package:c3financial/views/pages/home_screen.dart';
import 'package:c3financial/views/pages/payment/payment_screen.dart';
import 'package:c3financial/views/pages/profile/profile_screen.dart';
import 'package:c3financial/views/pages/transaction/transactionhistory_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late PersistentTabController _controller;
  late bool _hideNavBar;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
    _hideNavBar = false;
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      backgroundColor: mBackgroundColor,
      resizeToAvoidBottomInset: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: mBackgroundColor,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.elasticIn,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style3,
    );
  }

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const TransactionScreen(),
      const PaymentScreen(),
      const ProfileScreen()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home_filled),
        title: ("Dashboard"),
        activeColorPrimary: Colors.redAccent,
        inactiveColorPrimary: mMediumGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.drive_file_rename_outline),
        title: ("Transactions"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: mMediumGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.credit_card),
        title: ("Payment"),
        activeColorPrimary: Colors.green,
        inactiveColorPrimary: mMediumGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.verified_user_outlined),
        title: ("Profile"),
        activeColorPrimary: Colors.purple,
        inactiveColorPrimary: mMediumGrey,
      ),
    ];
  }
}
