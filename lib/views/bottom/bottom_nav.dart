import 'package:c3financial/constants/colors.dart';
import 'package:c3financial/views/pages/home_screen.dart';
import 'package:c3financial/views/pages/payment/payment_screen.dart';
import 'package:c3financial/views/pages/settings/settings_screen.dart';
import 'package:c3financial/views/pages/transaction/transactionhistory_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      backgroundColor: const Color(0xFFFFFFFF),
      resizeToAvoidBottomInset: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: mSwipeColor,
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
      navBarStyle: NavBarStyle.style12,
    );
  }

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const PaymentScreen(),
      const TransactionScreen(),
      const SettingsScreen()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const ImageIcon(AssetImage('assets/icons/home.png')),
        title: ("Dashboard"),
        activeColorPrimary: mSwipeColor,
        inactiveColorPrimary: mMediumGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const ImageIcon(AssetImage('assets/icons/payment.png')),
        title: ("Payment"),
        activeColorPrimary: Colors.green,
        inactiveColorPrimary: mMediumGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const ImageIcon(AssetImage('assets/icons/transactionrecord.png')),
        title: ("Transactions"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: mMediumGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const ImageIcon(AssetImage('assets/icons/menu.png')),
        title: ("Settings"),
        activeColorPrimary: Colors.purple,
        inactiveColorPrimary: mMediumGrey,
      ),
    ];
  }
}
