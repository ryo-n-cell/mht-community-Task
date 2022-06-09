import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/top_page.dart';
import 'pages/list_scroll_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(title: 'Flutter Demo Home Page'),
      initialRoute: '/',
      routes: {
        // '/': (context) => LoginPage(),
        '/TopPage': (context) => const TopPage(),
        '/ListScrollPage': (context) => ListScrollPage(),
      },
    );
  }
}


