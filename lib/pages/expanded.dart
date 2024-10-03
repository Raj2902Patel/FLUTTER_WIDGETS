import 'package:flutter/material.dart';
import 'package:week_3/pages/flexible.dart';

class ExpandedPage extends StatelessWidget {
  const ExpandedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("Expanded"),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  color: Colors.grey,
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.greenAccent,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 100,
                  color: Colors.blueAccent,
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.greenAccent,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              color: Colors.blueAccent,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FlexiblePage(),
            ),
          );
        },
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}
