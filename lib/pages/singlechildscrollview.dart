import 'package:flutter/material.dart';
import 'package:week_3/pages/text.dart';

class SinglechildscrollviewPage extends StatelessWidget {
  const SinglechildscrollviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("SingleChildScrollView"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      width: 100,
                      height: 100,
                      color: Colors.lightGreenAccent,
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      width: 100,
                      height: 100,
                      color: Colors.cyanAccent,
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      width: 100,
                      height: 100,
                      color: Colors.lightGreen,
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      width: 100,
                      height: 100,
                      color: Colors.brown,
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      width: 100,
                      height: 100,
                      color: Colors.indigoAccent,
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      width: 100,
                      height: 100,
                      color: Colors.deepOrange,
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      width: 100,
                      height: 100,
                      color: Colors.tealAccent,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                height: 100,
                color: Colors.blueAccent,
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                height: 100,
                color: Colors.pinkAccent,
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                height: 100,
                color: Colors.black26,
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                height: 100,
                color: Colors.indigo,
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                height: 100,
                color: Colors.teal,
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                height: 100,
                color: Colors.orangeAccent,
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                height: 100,
                color: Colors.amberAccent,
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                height: 100,
                color: Colors.lightGreenAccent,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TextPage()),
          );
        },
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}
