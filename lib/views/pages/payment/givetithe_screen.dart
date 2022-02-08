import 'package:flutter/material.dart';

class GiveTithe extends StatefulWidget {
  const GiveTithe({Key? key}) : super(key: key);

  @override
  _GiveTitheState createState() => _GiveTitheState();
}

class _GiveTitheState extends State<GiveTithe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  getAppBar() {
    return AppBar(
      title: const Text("Give your tithe"),
      backgroundColor: Colors.black,
      elevation: 0,
    );
  }

  getBody() {
    return const Center(child: Text("Give your tithe"));
  }
}
