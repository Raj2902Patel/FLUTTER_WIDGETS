import 'package:flutter/material.dart';
import 'package:week_3/pages/gesturedetector.dart';

class InkwellWidgetPage extends StatefulWidget {
  const InkwellWidgetPage({super.key});

  @override
  State<InkwellWidgetPage> createState() => _InkwellWidgetPageState();
}

class _InkwellWidgetPageState extends State<InkwellWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("Inkwell"),
        ),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            print("Container Clicked");
          },
          onDoubleTap: () {
            print("Container double pressed");
          },
          onLongPress: () {
            print("Container long pressed");
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(14.0),
            ),
            height: 200,
            width: 200,
            child: Center(
              child: InkWell(
                splashColor: Colors.blue.withOpacity(0.5),
                highlightColor: Colors.redAccent.withOpacity(0.5),
                onTap: () {
                  print("Text Clicked");
                },
                onDoubleTap: () {
                  print("Text Clicked two times");
                },
                onLongPress: () {
                  print("Text Clicked long times");
                },
                child: const Text(
                  "Hello World!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GesturedetectorPage(),
            ),
          );
        },
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}
