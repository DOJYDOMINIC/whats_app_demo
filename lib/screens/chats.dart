
import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor:Color.fromARGB(255, 0, 128, 105),onPressed: (){},child: Icon(Icons.message),),
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(radius: 25,
            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80"),
          ),
          title: Text("name"),
          subtitle: Text("Numbers"),
          trailing: Text("10"),
        );
      },itemCount: 50,),
    );
  }
}
