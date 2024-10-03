import 'package:flutter/material.dart';

import 'expandable_listview_separated.dart';

class ExpandableListviewBuilderPage extends StatefulWidget {
  const ExpandableListviewBuilderPage({super.key});

  @override
  State<ExpandableListviewBuilderPage> createState() =>
      _ExpandableListviewBuilderPageState();
}

class _ExpandableListviewBuilderPageState
    extends State<ExpandableListviewBuilderPage> {
  var dataMap = {
    "The first step to success": "Believe you can and you're halfway there",
    "Set no limits":
        "Shoot for the moon. Even if you miss, you'll land among the stars",
    "Growth happens in discomfort":
        "Challenges are what make life interesting and overcoming them is what makes life meaningful",
    "Never give up":
        "It does not matter how slowly you go as long as you do not stop",
    "Break through your own barriers":
        "Don't limit your challenges. Challenge your limits",
    "Learn from mistakes":
        "Success is not final, failure is not fatal: It is the courage to continue that counts",
    "Keep learning and growing":
        "The ones who are crazy enough to think they can change the world, are the ones that do",
    "Move forward, one step at a time":
        "The journey of a thousand miles begins with one step",
    "Mindset is everything":
        "Your attitude, not your aptitude, will determine your altitude",
    "The present is a gift": "What you do today can improve all your tomorrows",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("Expandable Build"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 5.0,
          left: 15.0,
          right: 15.0,
        ),
        child: ListView.builder(
          itemCount: dataMap.length,
          itemBuilder: (context, index) {
            var title = dataMap.keys.elementAt(index);
            var subtitle = dataMap.values.elementAt(index);
            return ExpansionTile(
              title: Text(
                title.toUpperCase(),
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 17.0,
                ),
              ),
              children: [
                Text(
                  textAlign: TextAlign.center,
                  subtitle,
                  style: const TextStyle(
                    color: Colors.purpleAccent,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ExpandableListviewSeparatedPage(),
            ),
          );
        },
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}
