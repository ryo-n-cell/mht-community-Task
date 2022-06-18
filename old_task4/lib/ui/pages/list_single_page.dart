import 'dart:developer';
import 'package:flutter/material.dart';
import '../../models/data_collect.dart';

class SingleList extends StatelessWidget {
  final DataCollect singles;
  const SingleList({Key? key,required this.singles}) : super(key: key);
  void _listDebug(){
    print(singles.title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(singles.title),
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