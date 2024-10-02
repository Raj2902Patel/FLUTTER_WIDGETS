import 'package:flutter/material.dart';
import 'package:week_3/pages/listview_separated.dart';

class ListviewBuilderPage extends StatefulWidget {
  const ListviewBuilderPage({super.key});

  @override
  State<ListviewBuilderPage> createState() => _ListviewBuilderPageState();
}

class _ListviewBuilderPageState extends State<ListviewBuilderPage> {
  var dataMap = {
    "Believe you can and you're halfway there": "The first step to success",
    "Shoot for the moon. Even if you miss, you'll land among the stars":
        "Set no limits",
    "Challenges are what make life interesting and overcoming them is what makes life meaningful":
        "Growth happens in discomfort",
    "It does not matter how slowly you go as long as you do not stop":
        "Never give up",
    "Don't limit your challenges. Challenge your limits":
        "Break through your own barriers",
    "Success is not final, failure is not fatal: It is the courage to continue that counts":
        "Learn from mistakes",
    "The ones who are crazy enough to think they can change the world, are the ones that do":
        "Keep learning and growing",
    "The journey of a thousand miles begins with one step":
        "Move forward, one step at a time",
    "Your attitude, not your aptitude, will determine your altitude":
        "Mindset is everything",
    "What you do today can improve all your tomorrows": "The present is a gift",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("ListView Builder"),
        ),
      ),
      body: ListView.builder(
        itemCount: dataMap.length,
        // reverse: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          var title = dataMap.keys.elementAt(index);
          var subtitle = dataMap.values.elementAt(index);
          return Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            child: SizedBox(
              // width: double.infinity,
              child: Card(
                elevation: 5.0,
                child: ListTile(
                  title: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  subtitle: Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  leading: const Icon(
                    size: 35,
                    Icons.auto_awesome_motion_sharp,
                  ),
                  trailing: const Icon(size: 35, Icons.flight),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ListViewSeparatedPage()));
        },
        child: const Icon(Icons.menu),
      ),
    );
  }
}
