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
      title: const Text("Tithe Account"),
      backgroundColor: Colors.black,
      elevation: 0,
    );
  }

  getBody() {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 100,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: const [
                      SizedBox(height: 10),
                      Text(
                        "CURRENT ACCOUNT",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueGrey,
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          "500,000.00",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  )),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Transaction history",
                    style: TextStyle(fontSize: 16)),
                Row(
                  children: [
                    const Text("Filter", style: TextStyle(fontSize: 16)),
                    const SizedBox(width: 5),
                    Container(
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const ImageIcon(
                          AssetImage('assets/icons/right.png'),
                          size: 15,
                          color: Colors.white),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            myTransactionHistory("04", "Jan, 2022", "January tithe",
                "Fund received by C3", "04-Jan-2022 02:03am", "+50,000"),
            const SizedBox(height: 10),
            myTransactionHistory("10", "Dec, 2021", "December tithe",
                "Fund received by C3", "10-Dec-2021 03:43am", "+50,000"),
            const SizedBox(height: 10),
            myTransactionHistory("08", "Nov, 2021", "November tithe",
                "Fund received by C3", "08-Nov-2021 02:03am", "+50,000"),
            const SizedBox(height: 10),
            myTransactionHistory("09", "Oct, 2021", "October tithe",
                "Fund received by C3", "09-Oct-2021 02:03am", "+50,000"),
            const SizedBox(height: 10),
            myTransactionHistory("04", "Sept, 2021", "September tithe",
                "Fund received by C3", "04-Sept-2021 02:03am", "+50,000"),
            const SizedBox(height: 10),
            myTransactionHistory("14", "Aug, 2021", "August tithe",
                "Fund received by C3", "14-Aug-2021 04:03pm", "+50,000"),
            const SizedBox(height: 10),
            myTransactionHistory("05", "July, 2021", "July tithe",
                "Fund received by C3", "05-July-2021 05:30pm", "+50,000"),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  myTransactionHistory(String day, String monthYear, String title,
      String receiver, String dateTime, String amount) {
    return Column(
      children: [
        Container(
          width: 380,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 5,
                    color: Colors.lightGreen,
                    margin: const EdgeInsets.only(right: 5),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE5E5E5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          day,
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        ),
                        Text(monthYear),
                      ],
                    ),
                  ),
                  const SizedBox(width: 5),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        receiver,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        dateTime,
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  amount,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
