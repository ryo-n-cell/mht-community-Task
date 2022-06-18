import 'dart:convert';
// import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'list_single_page.dart';
import '../../models/data_collect.dart';

class ListCollectPage extends StatefulWidget {
  const ListCollectPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ListCollectPage> createState() => _ListCollectPage();
}

class _ListCollectPage extends State<ListCollectPage> {

  List<DataCollect> viewLists = [];

  Future<void> _searchLists(String searchWord) async {
    String url = 'https://connpass.com/api/v1/event/?count=10';
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      List<DataCollect> list = [];
      Map<String, dynamic> decoded = json.decode(response.body);
      for (var item in decoded['events']) {
        list.add(DataCollect.fromJson(item));
      }
      setState((){
        viewLists = list;
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
    print(viewLists[0].title);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
          child:ListView.builder(
            itemCount: viewLists.length ,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                  onTap:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SingleList(singles:viewLists[index])),
                    );
                  },
                  child: Card(
                    child:ListTile(
                      title: Text(viewLists[index].title),
                      subtitle: Text('${viewLists[index].startedAt.substring(0,9)} / ${viewLists[index].startedAt.substring(11,16)}'),
                    ) ,
                  )
              );
            },
          ),
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

