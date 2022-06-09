import 'package:flutter/material.dart';

class CommonDrawer  extends StatelessWidget {
  CommonDrawer({Key? key}) : super(key: key);

  final List<DrawerList> _drawerItems=[
    DrawerList("はじめに",Icons.looks_one_outlined,"/TopPage"),
    DrawerList("OOUIについて",Icons.looks_two_outlined,"/ListScrollPage"),
    DrawerList("実践",Icons.looks_3_outlined,"/ListScrollPage"),
    DrawerList("基礎編",Icons.looks_4_outlined,"/ListScrollPage"),
    DrawerList("応用編",Icons.looks_5_outlined,"/ListScrollPage"),
    DrawerList("ログアウト",Icons.logout,"/"),
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
              Navigator.pushReplacementNamed(context, _drawerItems[index].rootPage);
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
  String rootPage;
  DrawerList(this.title,this.icon,this.rootPage);
}