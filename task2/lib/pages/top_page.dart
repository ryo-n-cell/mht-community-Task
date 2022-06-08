import 'package:flutter/material.dart';
import '../components/common_drawer.dart';


class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:CommonDrawer(),
      appBar: AppBar(
        title: const Text("Become an OOUI master"),
      ),
      body: const Image(
        image:AssetImage("assets/images/image.png"),
      ),
    );
  }
}