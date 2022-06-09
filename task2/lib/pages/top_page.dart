import 'package:flutter/material.dart';
import '../components/common_drawer.dart';
import '../components/common_appbar.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);
  final pageTitle = "はじめに";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:CommonDrawer(),
      appBar: AppBar(
        title: const Text("はじめに"),
      ),
      body: const Image(
        image:AssetImage("assets/images/image.png"),
      ),
    );
  }
}