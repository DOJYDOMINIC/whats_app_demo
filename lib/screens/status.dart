
import 'package:flutter/material.dart';

import '../Consts/others.dart';
import 'chats.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SingleAvathar(),
          Padding(
            padding: const EdgeInsets.only(right:250,top: 15),
            child: Text("Recent Updates",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
          ),
          Expanded(child:StatusList())
        ],
      ),
    );
  }
}
