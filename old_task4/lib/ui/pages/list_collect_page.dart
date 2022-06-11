import 'dart:convert';
// import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListCollectPage extends StatefulWidget {
  const ListCollectPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ListCollectPage> createState() => _ListCollectPage();
}

class _ListCollectPage extends State<ListCollectPage> {

  List<ListCollect> viewList = [];

   Future<void> _searchLists(String searchWord) async {
    String url = 'https://connpass.com/api/v1/event/?count=5';
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      List<ListCollect> list = [];
      Map<String, dynamic> decoded = json.decode(response.body);
      for (var item in decoded['events']) {
        list.add(ListCollect.fromJson(item));
      }
      setState((){
        viewList = list;
      });
    } else {
      throw Exception('Fail to search repository');
    }
  }

  @override
  void initState() {
    super.initState();
     _searchLists("AAA");
  }


  void _listDebug(){
    print(viewList);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
        body: ListView.builder(
          itemCount: viewList.length ,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.grey,
              child: Row(
                children:<Widget> [
                  ListTile(
                    title:Text(viewList[index].title),
                    subtitle:Text(viewList[index].hashTag),
                  ),
                ],
              ),
            );
          },
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _listDebug();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ListCollect{
  final int id;
  final String title;
  final String hashTag;
  final String startedAt;

  ListCollect.fromJson(Map<String, dynamic> json)
    : id = json['event_id'],
    title = json['title'],
    hashTag = json['hash_tag'],
    startedAt = json['started_at'];
}