import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MasonryPage extends StatefulWidget {
  const MasonryPage({super.key});

  @override
  State<MasonryPage> createState() => _MasonryPageState();
}

class _MasonryPageState extends State<MasonryPage> {
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
    List<Widget> getContainer = [
      Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: 50,
        color: _getColor(),
      ),
      Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: 100,
        color: _getColor(),
      ),
      Container(
        height: MediaQuery.of(context).size.height * 0.8,
        width: 71,
        color: _getColor(),
      ),
      Container(
        width: 65,
        height: MediaQuery.of(context).size.height * 0.2,
        color: _getColor(),
      ),
      Container(
        height: 78,
        width: 64,
        color: _getColor(),
      ),
      Container(
        height: 95,
        width: 125,
        color: _getColor(),
      ),
      Container(
        height: 45,
        width: 120,
        color: _getColor(),
      ),
      Container(
        height: 152,
        width: 62,
        color: _getColor(),
      ),
      Container(
        height: 198,
        width: 50,
        color: _getColor(),
      ),
      Container(
        height: 123,
        width: 123,
        color: _getColor(),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("MasonryPage"),
        ),
      ),
      body: MasonryGridView.count(
        itemCount: getContainer.length,
        crossAxisCount: 4,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        itemBuilder: (context, index) {
          return getContainer[index];
        },
      ),
    );
  }
}
