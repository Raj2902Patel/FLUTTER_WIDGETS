import 'package:flutter/material.dart';
import 'package:week_3/pages/wrap.dart';

class RowColumnPage extends StatelessWidget {
  const RowColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("Row & Column"),
        ),
      ),
      body: SizedBox(
        height: 800,
        // width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("A", style: TextStyle(fontSize: 22.0)),
                const Text("B", style: TextStyle(fontSize: 22.0)),
                Column(
                  children: [
                    TextButton(onPressed: () {}, child: const Text("Button 1")),
                    TextButton(onPressed: () {}, child: const Text("Button 2")),
                  ],
                ),
                const Text("D", style: TextStyle(fontSize: 22.0)),
                const Text("E", style: TextStyle(fontSize: 22.0)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("A", style: TextStyle(fontSize: 22.0)),
                const Text("B", style: TextStyle(fontSize: 22.0)),
                const Text("C", style: TextStyle(fontSize: 22.0)),
                const Text("D", style: TextStyle(fontSize: 22.0)),
                const Text("E", style: TextStyle(fontSize: 22.0)),
                TextButton(onPressed: () {}, child: const Text("Button 1")),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const WrapPage()));
        },
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}
