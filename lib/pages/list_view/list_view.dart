import 'package:flutter/material.dart';
import 'package:week_3/pages/list_view/listview_builder.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("ListView"),
        ),
      ),
      body: ListView(
        // reverse: true,
        scrollDirection: Axis.vertical,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            child: SizedBox(
              // width: double.infinity,
              child: Card(
                elevation: 5.0,
                child: ListTile(
                  title: Text('Good Moring'),
                  subtitle: Text("How Are You?"),
                  leading: Icon(
                    Icons.auto_awesome_motion_sharp,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            child: SizedBox(
              // width: double.infinity,
              child: Card(
                elevation: 5.0,
                child: ListTile(
                  title: Text('Good Moring'),
                  subtitle: Text("How Are You?"),
                  leading: Icon(
                    Icons.auto_awesome_motion_sharp,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            child: SizedBox(
              // width: double.infinity,
              child: Card(
                elevation: 5.0,
                child: ListTile(
                  title: Text('Good Moring'),
                  subtitle: Text("How Are You?"),
                  leading: Icon(
                    Icons.auto_awesome_motion_sharp,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            child: SizedBox(
              // width: double.infinity,
              child: Card(
                elevation: 5.0,
                child: ListTile(
                  title: Text('Good Moring'),
                  subtitle: Text("How Are You?"),
                  leading: Icon(
                    Icons.auto_awesome_motion_sharp,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            child: SizedBox(
              // width: double.infinity,
              child: Card(
                elevation: 5.0,
                child: ListTile(
                  title: Text('Good Moring'),
                  subtitle: Text("How Are You?"),
                  leading: Icon(
                    Icons.auto_awesome_motion_sharp,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            child: SizedBox(
              // width: double.infinity,
              child: Card(
                elevation: 5.0,
                child: ListTile(
                  title: Text('Good Moring'),
                  subtitle: Text("How Are You?"),
                  leading: Icon(
                    Icons.auto_awesome_motion_sharp,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            child: SizedBox(
              // width: double.infinity,
              child: Card(
                elevation: 5.0,
                child: ListTile(
                  title: Text('Good Moring'),
                  subtitle: Text("How Are You?"),
                  leading: Icon(
                    Icons.auto_awesome_motion_sharp,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            child: SizedBox(
              // width: double.infinity,
              child: Card(
                elevation: 5.0,
                child: ListTile(
                  title: Text('Good Moring'),
                  subtitle: Text("How Are You?"),
                  leading: Icon(
                    Icons.auto_awesome_motion_sharp,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const ListviewBuilderPage()),
          );
        },
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}
