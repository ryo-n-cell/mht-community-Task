import 'package:flutter/material.dart';
import '../components/common_drawer.dart';

class ListScrollPage extends StatelessWidget {
  ListScrollPage({Key? key}) : super(key: key);

  final List<ScrollList> _scrollItems=[
    ScrollList("List1","assets/images/list_img_1.jpg"),
    ScrollList("List2","assets/images/list_img_2.jpg"),
    ScrollList("List3","assets/images/list_img_3.jpg"),
    ScrollList("List4","assets/images/list_img_4.jpg"),
    ScrollList("List5","assets/images/list_img_5.jpg"),
    ScrollList("List6","assets/images/list_img_6.jpg"),
    ScrollList("List7","assets/images/list_img_1.jpg"),
    ScrollList("List8","assets/images/list_img_2.jpg"),
    ScrollList("List9","assets/images/list_img_3.jpg"),
    ScrollList("List10","assets/images/list_img_4.jpg"),
    ScrollList("List11","assets/images/list_img_6.jpg"),
    ScrollList("List12","assets/images/list_img_1.jpg"),
    ScrollList("List13","assets/images/list_img_2.jpg"),
    ScrollList("List14","assets/images/list_img_3.jpg"),
    ScrollList("List15","assets/images/list_img_4.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:CommonDrawer(),
      appBar: AppBar(
        title: const Text("ListScrollPage"),
      ),
    body:SafeArea(
      child: GridView.count(
        childAspectRatio: (3/2),
        crossAxisCount:2,
        children: <Widget>[
          for (var i = 0; i < 14; i++)
            Card(
              child: Row(
                children:<Widget>[
                  Image(
                    image:AssetImage(_scrollItems[i].listImg)
                  ),
                ],
                Text(_scrollItems[i].title)
              ),
            ),
        ],
      ),
    )
    );
  }
}

class ScrollList{
  String title;
  String listImg;
  ScrollList(this.title,this.listImg);
}