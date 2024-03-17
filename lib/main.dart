// ignore_for_file: unused_import, prefer_const_constructors, depend_on_referenced_packages

import 'package:check/pages/alphabet_page.dart';
import 'package:check/pages/camera_page.dart';
import 'package:check/pages/color_page.dart';
import 'package:check/pages/curvedNav.dart';
import 'package:check/pages/expression_page.dart';
import 'package:check/pages/intro_page.dart';
import 'package:check/pages/numbers_page.dart';
import 'package:check/pages/features_page.dart';
import 'package:check/pages/learn_basics.dart';
import 'package:check/pages/result_page.dart';
import 'package:check/pages/start_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as p;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const IntroPage(),
    );
  }
}
