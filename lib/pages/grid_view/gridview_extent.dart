import 'dart:math';

import 'package:flutter/material.dart';

class GridviewExtentPage extends StatelessWidget {
  GridviewExtentPage({super.key});

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
    List<Widget> gridItem = List.generate(
      25,
      (index) {
        return Container(
          margin: const EdgeInsets.all(8.0),
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
          child: Text("Grid View Extent"),
        ),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 150,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: gridItem,
      ),
    );
  }
}
