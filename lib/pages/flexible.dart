import 'package:flutter/material.dart';
import 'package:week_3/pages/flex.dart';

class FlexiblePage extends StatelessWidget {
  const FlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("Flexible"),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.orangeAccent,
            height: 300,
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              color: Colors.deepPurpleAccent,
              height: 150,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FlexPage(),
            ),
          );
        },
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}
