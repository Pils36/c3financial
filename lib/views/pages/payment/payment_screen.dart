import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    return const Center(
      child: Text("Payment Screen"),
    );
  }
}
