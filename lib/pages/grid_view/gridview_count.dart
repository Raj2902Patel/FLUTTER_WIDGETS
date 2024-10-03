import 'dart:math';

import 'package:flutter/material.dart';
import 'package:week_3/pages/grid_view/gridview_extent.dart';

class GridviewCountPage extends StatefulWidget {
  const GridviewCountPage({super.key});

  @override
  State<GridviewCountPage> createState() => _GridviewCountPageState();
}

class _GridviewCountPageState extends State<GridviewCountPage> {
  final Random _random = Random();

  Color _getColor() {
    return Color.fromARGB(
      255,
      _random.nextInt(255),
      _random.nextInt(255),
      _random.nextInt(255),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> gridItems = List.generate(
      25,
      (index) {
        return Container(
          margin: const EdgeInsets.only(left: 3.0, right: 3.0, top: 10.0),
          alignment: Alignment.center,
          color: _getColor(),
          child: Text("Item $index"),
        );
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text(
            "GridView Count",
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        children: gridItems,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GridviewExtentPage(),
            ),
          );
        },
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}
