import 'package:flutter/material.dart';
import 'package:poc_forms_dynamic/modules/home/home_page.dart';
import 'package:poc_forms_dynamic/modules/todo/todo_list_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'POC Tutator',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
        '/todo': (BuildContext context) => TodoListPage()
      },
    );
  }
}
