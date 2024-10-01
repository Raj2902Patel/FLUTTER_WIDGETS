import 'package:flutter/material.dart';
import 'package:week_3/pages/row_column.dart';

class MarginAndPaddingPage extends StatelessWidget {
  const MarginAndPaddingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("Margin & Padding"),
        ),
      ),
      // body: const Padding(
      //   padding: EdgeInsets.only(top: 30.0, left: 20.0),
      //   child: Text(
      //     "Hello World!",
      //     style: TextStyle(
      //       fontSize: 20,
      //     ),
      //   ),
      // ),

      body: Container(
        margin: const EdgeInsets.only(left: 20.0, top: 30.0),
        padding: const EdgeInsets.only(
            left: 20.0, top: 5.0, bottom: 5.0, right: 20.0),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const Text(
          "Hello World!",
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const RowColumnPage()));
        },
        child: const Icon(Icons.flight),
      ),
    );
  }
}
