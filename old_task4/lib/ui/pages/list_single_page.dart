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
        title: Text(value[listId].title),
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