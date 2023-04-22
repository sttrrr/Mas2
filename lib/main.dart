import 'package:docum/menu_page.dart';
import 'package:docum/profile.dart';
import 'package:docum/services/document_page.dart';
import 'package:docum/signaturePage.dart';
import 'package:docum/users/home_user_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:  DocumentPage(),
    );
  }
}