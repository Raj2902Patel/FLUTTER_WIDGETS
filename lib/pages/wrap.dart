import 'package:flutter/material.dart';
import 'package:week_3/pages/singlechildscrollview.dart';

class WrapPage extends StatelessWidget {
  const WrapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("Wrap"),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          spacing: 11,
          direction: Axis.vertical,
          runSpacing: 11,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.blueAccent,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.orangeAccent,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellowAccent,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.redAccent,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.greenAccent,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.purpleAccent,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.cyanAccent,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepPurpleAccent,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepPurpleAccent,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const SinglechildscrollviewPage()));
        },
        child: const Icon(Icons.flight),
      ),
    );
  }
}
