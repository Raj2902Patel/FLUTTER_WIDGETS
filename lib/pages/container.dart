import 'package:flutter/material.dart';
import 'package:week_3/pages/sizedbox.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("Container"),
        ),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          transform: Matrix4.rotationZ(0.2),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.blueGrey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: const Text("Hello World!"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SizedboxPage(),
            ),
          );
        },
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}
