import 'package:flutter/material.dart';

import 'expandable_listview_builder.dart';
import 'expandable_listview_separated.dart';

class ExpandableListviewPage extends StatefulWidget {
  const ExpandableListviewPage({super.key});

  @override
  State<ExpandableListviewPage> createState() => _ExpandableListviewPageState();
}

class _ExpandableListviewPageState extends State<ExpandableListviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("Expandable Listview"),
        ),
      ),
      body: ListView(
        children: [
          ExpansionTile(
            title: const Text(
              "Hello! How Are You?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: const Text("Good Morning"),
            children: [
              const ListTile(
                title: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "ListTile -> 1",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              const ListTile(
                title: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "ListTile -> 2",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: const Text(
                      "Use Container!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              const ListTile(
                title: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "ListTile -> 4",
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ExpandableListviewBuilderPage()));
        },
        child: const Icon(Icons.menu),
      ),
    );
  }
}
