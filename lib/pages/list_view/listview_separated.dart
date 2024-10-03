import 'package:flutter/material.dart';
import 'package:week_3/pages/list_view/expandable_listview.dart';

class ListViewSeparatedPage extends StatefulWidget {
  const ListViewSeparatedPage({super.key});

  @override
  State<ListViewSeparatedPage> createState() => _ListViewSeparatedPageState();
}

class _ListViewSeparatedPageState extends State<ListViewSeparatedPage> {
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
          child: Text("ListView Separated"),
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Divider(
                thickness: 3,
                color: Colors.blueGrey,
              ),
            ),
          );
        },
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
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
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
              builder: (context) => const ExpandableListviewPage(),
            ),
          );
        },
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}
