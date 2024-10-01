import 'package:flutter/material.dart';
import 'package:week_3/pages/card.dart';

class StackTaskPage extends StatefulWidget {
  const StackTaskPage({super.key});

  @override
  State<StackTaskPage> createState() => _StackTaskPageState();
}

class _StackTaskPageState extends State<StackTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.grey,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.home_outlined,
                      size: 40,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    Icon(
                      Icons.access_time_sharp,
                      size: 40,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    Icon(
                      Icons.account_balance_wallet_outlined,
                      size: 40,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 280),
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CardPage()));
                    },
                    child: const Text(
                      "Next Page!",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.deepPurple.withOpacity(0.8),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50.0),
                bottomLeft: Radius.circular(50.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    const Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 50,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Welcome back!!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      'assets/images/img1.jpg',
                      height: 150,
                      width: 180,
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
