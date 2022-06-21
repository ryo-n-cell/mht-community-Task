import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import '../../models/data_collect.dart';

class SingleList extends StatelessWidget {
  final DataCollect singles;
  const SingleList({Key? key,required this.singles}) : super(key: key);
  void _listDebug(){
    print(singles.description);
  }

  @override
  Widget build(BuildContext context) {
    final htmlData = singles.description;
    return Scaffold(
      appBar: AppBar(
        title: Text(singles.title),
      ),
      body: SingleChildScrollView(
        child: Html(
          data: htmlData,
        ),
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