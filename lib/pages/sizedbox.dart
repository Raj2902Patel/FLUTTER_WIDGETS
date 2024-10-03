import 'package:flutter/material.dart';
import 'package:week_3/pages/center.dart';

class SizedboxPage extends StatefulWidget {
  const SizedboxPage({super.key});

  @override
  State<SizedboxPage> createState() => _SizedboxPageState();
}

class _SizedboxPageState extends State<SizedboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(
            left: 30.0,
          ),
          child: Text("SizedBox"),
        ),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 30,
            maxHeight: 40,
            minWidth: 200,
            maxWidth: 400,
          ),
          // child: SizedBox(
          //   height: 100,
          //   width: 250,
          //   child: ElevatedButton(onPressed: () {}, child: Text("Click Here!")),
          // ),
          // child: SizedBox.expand(
          //   child: ElevatedButton(
          //     onPressed: () {},
          //     child: const Text("Click Here!"),
          //   ),
          // ),
          child: SizedBox.shrink(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Click Here!"),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CenterPage(),
            ),
          );
        },
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}
