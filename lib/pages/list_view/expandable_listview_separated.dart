import 'package:flutter/material.dart';
import 'package:week_3/pages/grid_view/girdview_builder.dart';

class ExpandableListviewSeparatedPage extends StatefulWidget {
  const ExpandableListviewSeparatedPage({super.key});

  @override
  State<ExpandableListviewSeparatedPage> createState() =>
      _ExpandableListviewSeparatedPageState();
}

class _ExpandableListviewSeparatedPageState
    extends State<ExpandableListviewSeparatedPage> {
  final List<String> categories = ['fruits', 'vegetables', 'dairy'];

  final Map<String, List<String>> item = {
    'fruits': ['apple', 'banana', 'mango'],
    'vegetables': ['carrot', 'broccoli', 'spinach'],
    'dairy': ['milk', 'cheese', 'butter']
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("Expandable Separated"),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          var category = categories[index];

          return Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 15.0, right: 15.0),
            child: ExpansionTile(
              title: Text(
                category.toUpperCase(),
                style: const TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              children: item[category]!
                  .map(
                    (item) => ListTile(
                      title: Text(
                        item.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.redAccent,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(16.0),
            child: Divider(
              color: Colors.blueGrey,
            ),
          );
        },
        itemCount: categories.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GirdviewBuilderPage(),
            ),
          );
        },
        child: const Icon(
          Icons.arrow_circle_right_outlined,
        ),
      ),
    );
  }
}
