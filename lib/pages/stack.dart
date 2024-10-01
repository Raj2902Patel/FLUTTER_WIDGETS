import 'package:flutter/material.dart';
import 'package:week_3/pages/stack_task.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("Stack"),
        ),
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          padding: const EdgeInsets.all(15.0),
          // color: Colors.orangeAccent,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                color: Colors.greenAccent,
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.redAccent,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const StackTaskPage(),
            ),
          );
        },
        child: const Icon(Icons.flight),
      ),
    );
  }
}
