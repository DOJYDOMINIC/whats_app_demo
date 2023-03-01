
import 'package:flutter/material.dart';
import 'package:whats_app_demo/screens/chats.dart';
import 'package:whats_app_demo/screens/status.dart';
import 'Consts/colors.dart';
import 'Consts/textsfile.dart';

class Whats_App extends StatelessWidget {
  const Whats_App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(backgroundColor: uicolor,
            title: whatsapp,
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined)),
            ],
            bottom: TabBar(tabs: [
              Tab(child: Text("Chats"),),
              Tab(child: Text("Status"),),
              Tab(child: Text("Calls"),),
            ]),
          ),
          body: TabBarView(children: [
            Chats(),
            Status(),
            Text("hai"),
          ],
          ),
        ),
      ),
    );
  }
}
