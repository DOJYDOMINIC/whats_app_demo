
import 'package:flutter/material.dart';

class SingleAvathar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListTile(
        leading: Stack(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80"),
              radius: 25,
              backgroundColor: Colors.red,
            ),
            Positioned(
              top: 30,
              left: 30,
              child: CircleAvatar(
                radius: 10,
                child: Icon(Icons.add,size: 15,),
              ),
            ),
          ],
        ),
        title: Text("Name"),
        subtitle: Text("Subtitle"),
      ),
    );
  }
}

class StatusList extends StatefulWidget {
  const StatusList({Key? key}) : super(key: key);

  @override
  State<StatusList> createState() => _StatusListState();
}

class _StatusListState extends State<StatusList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor:Color.fromARGB(255, 0, 128, 105),onPressed: (){},child: Icon(Icons.camera_alt),),
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
