import 'package:flutter/material.dart';
/* import 'package:hive_flutter/hive_flutter.dart';

import 'assistant/assistant_login.dart'; */

class Home extends StatelessWidget {
  const Home({super.key});

/*   final Box _boxLogin = Hive.box('login'); */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.schedule)),
              Tab(icon: Icon(Icons.person_outline)),
            ],
          ),
          title: const Text("PerSSistant X"),
        ),
        body: TabBarView(
          children: [
            Center(
                child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.transparent,
              child: const Center(
                  child: Text(
                "Hello from Home",
                style: TextStyle(color: Colors.black, fontSize: 20),
              )),
            )),
            Center(
              child: Container(
                color: Colors.transparent,
                padding: const EdgeInsets.all(10),
                child: const Center(
                  child: Text(
                    "Hello from Schedule",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                color: Colors.transparent,
                padding: const EdgeInsets.all(10),
                child: const Center(
                  child: Text(
                    "Hello from Profile",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
