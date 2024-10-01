import 'package:flutter/material.dart';
import 'package:week_3/pages/textform_field.dart';

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("Text"),
        ),
      ),
      body: Column(
        children: [
          const Text(
            "Hello World!",
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0, left: 20.0),
            child: RichText(
              text: const TextSpan(
                text: "How ",
                style: TextStyle(color: Colors.black, fontSize: 20.0),
                // style: DefaultTextStyle.of(context).style,
                children: [
                  TextSpan(
                    text: " Are You?",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TextFieldPage(),
            ),
          );
        },
        child: const Icon(Icons.flight),
      ),
    );
  }
}
