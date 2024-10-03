import 'package:flutter/material.dart';
import 'package:week_3/pages/stack.dart';

class GesturedetectorPage extends StatefulWidget {
  const GesturedetectorPage({super.key});

  @override
  State<GesturedetectorPage> createState() => _GesturedetectorPageState();
}

class _GesturedetectorPageState extends State<GesturedetectorPage> {
  bool _isTuredOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isTuredOn ? Colors.grey : Colors.white,
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("GestureDetector"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lightbulb_outline_rounded,
              size: 100,
              color: _isTuredOn
                  ? Colors.yellowAccent.withOpacity(0.5)
                  : Colors.blueGrey,
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isTuredOn = !_isTuredOn;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: _isTuredOn
                      ? Colors.black.withOpacity(0.5)
                      : Colors.yellowAccent.withOpacity(0.5),
                ),
                height: 40,
                width: 150,
                child: Center(
                  child: Text(
                    _isTuredOn ? 'TURN OFF' : 'TURN ON',
                    style: TextStyle(
                      color: _isTuredOn
                          ? Colors.yellowAccent.withOpacity(0.5)
                          : Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const StackPage(),
            ),
          );
        },
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}
