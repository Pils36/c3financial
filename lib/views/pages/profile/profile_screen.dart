import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  getAppBar() {
    return AppBar(
      title: const Text("Profile"),
      backgroundColor: Colors.purple,
    );
  }

  getBody() {
    return const Center(
      child: Text("Profile Screen"),
    );
  }
}
