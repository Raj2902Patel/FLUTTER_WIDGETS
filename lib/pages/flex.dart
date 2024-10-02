import 'package:flutter/material.dart';
import 'package:week_3/pages/list_view.dart';

class FlexPage extends StatelessWidget {
  const FlexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("Flex"),
        ),
      ),
      body: Center(
        child: Flex(
          mainAxisAlignment: MainAxisAlignment.center,
          direction: Axis.vertical,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.deepPurpleAccent,
            ),
            const SizedBox(
              height: 15,
              width: 15,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.orangeAccent,
            ),
            const SizedBox(
              height: 15,
              width: 15,
            ),
            Wrap(
              children: [
                Container(
                  padding: const EdgeInsets.all(30.0),
                  margin: const EdgeInsets.all(10.0),
                  child: const Text(
                    textAlign: TextAlign.center,
                    "It's the base class for Row and Column. which are more commonly used for layouts.",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ListviewPage()));
        },
        child: const Icon(Icons.flight),
      ),
    );
  }
}
