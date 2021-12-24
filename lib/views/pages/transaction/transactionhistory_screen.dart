import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  getAppBar() {
    return AppBar(
      title: const Text("Transactions"),
      backgroundColor: Colors.black,
      elevation: 0,
    );
  }

  getBody() {
    return const Center(
      child: Text("Transaction Records"),
    );
  }
}
