import 'dart:math';

import 'package:flutter/material.dart';
import 'package:week_3/pages/grid_view/gridview_count.dart';

class GirdviewBuilderPage extends StatefulWidget {
  const GirdviewBuilderPage({super.key});

  @override
  State<GirdviewBuilderPage> createState() => _GirdviewBuilderPageState();
}

class _GirdviewBuilderPageState extends State<GirdviewBuilderPage> {
  final Random _random = Random();

  Color _getColor() {
    return Color.fromARGB(
        255, _random.nextInt(255), _random.nextInt(255), _random.nextInt(255));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("GridView Builder"),
        ),
      ),
      body: GridView.builder(
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          // childAspectRatio: 1.0,
        ),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
            alignment: Alignment.center,
            color: _getColor(),
            child: Text("Item $index"),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GridviewCountPage(),
            ),
          );
        },
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}
