import 'package:flutter/material.dart';

class TitheRecord extends StatefulWidget {
  const TitheRecord({Key? key}) : super(key: key);

  @override
  _TitheRecordState createState() => _TitheRecordState();
}

class _TitheRecordState extends State<TitheRecord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: getBody(),
      backgroundColor: const Color(0xFFE5E5E5),
    );
  }

  getAppBar() {
    return AppBar(
      title: const Text("Tithe History"),
      backgroundColor: Colors.black,
      elevation: 0,
    );
  }

  getBody() {
    return const Center(child: Text("Tithe History"));
  }
}
