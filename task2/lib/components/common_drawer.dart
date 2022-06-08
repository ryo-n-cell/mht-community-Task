import 'package:flutter/material.dart';
import '../pages/top_page.dart';
import '../pages/list_scroll_page.dart';

class CommonDrawer  extends StatelessWidget {
  CommonDrawer({Key? key}) : super(key: key);

  final List<DrawerList> _drawerItems=[
    DrawerList("はじめに",Icons.looks_one_outlined),
    DrawerList("OOUIについて",Icons.looks_two_outlined),
    DrawerList("実践",Icons.looks_3_outlined),
    DrawerList("基礎編",Icons.looks_4_outlined),
    DrawerList("応用編",Icons.looks_5_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_drawerItems[index].title),
            leading: Icon(_drawerItems[index].icon),
            onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  ListScrollPage()),
            );
          },
          );
        },
        itemCount:_drawerItems.length
      )
    );
  }
}

class DrawerList{
  String title;
  IconData icon;
  DrawerList(this.title,this.icon);
}