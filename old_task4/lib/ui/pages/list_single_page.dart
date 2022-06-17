import 'dart:developer';
import 'package:flutter/material.dart';

class SingleList extends StatelessWidget {
  final int listId;
  final List<dynamic> value;
  const SingleList({Key? key,required this.listId, required this.value}) : super(key: key);

  void _listDebug(){
    print(value[listId].title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TEST"),
      ),
      body: Column(
        children: const [
          Text("value"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _listDebug();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
class ListCollect{
  final int id;
  final String title;
  final String hashTag;
  final String startedAt;
  // final String date;
  // final String time;

  ListCollect.fromJson(Map<String, dynamic> json)
      : id = json['event_id'],
        title = json['title'],
        hashTag = json['hash_tag'],
        startedAt = json['started_at'];
// date = json['date'],
// time = json['time'];
}