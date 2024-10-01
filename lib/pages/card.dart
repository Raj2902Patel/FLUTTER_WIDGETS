import 'package:flutter/material.dart';
import 'package:week_3/pages/expanded.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("Card"),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: const Center(
          child: Card(
            shadowColor: Colors.redAccent,
            elevation: 5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: Text("Hello World!"),
                  subtitle: Text("How Are You? What are you doing?"),
                  leading: Icon(Icons.airplane_ticket),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15.0, bottom: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Morning",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Evening",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ExpandedPage(),
            ),
          );
        },
        child: const Icon(Icons.flight),
      ),
    );
  }
}
