import 'package:flutter/material.dart';
import 'package:week_3/pages/buttons.dart';

class ImageTwoPage extends StatelessWidget {
  const ImageTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("Hero"),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(12.0),
        child: Hero(
          tag: 'image_tag',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(13.0),
            child: Image.asset(
              "assets/images/img1.jpg",
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ButtonPage(),
            ),
          );
        },
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}
