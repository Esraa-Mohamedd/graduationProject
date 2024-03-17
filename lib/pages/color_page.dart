import 'package:check/pages/curvedNav.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'camera_page.dart';
import 'features_page.dart';
import 'learn_basics.dart';

class ColorPage extends StatefulWidget {
  const ColorPage({Key? key}) : super(key: key);

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  int _currentIndex = 2;

  void _showImageAlertDialog({
    required BuildContext context,
    required String title,
    required String photoPath,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: Column(
              children: [ Image.asset(photoPath, height: 300, width: 300)])),
          actions: [
            TextButton(
              onPressed: () {Navigator.of(context).pop();},
              child: Text('Close'))]);});
  }

  Widget CustomElevatedButton({
    required String text,
    required String photoPath,
    required Color color,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(180, 40),backgroundColor: color, minimumSize: const Size(90, 50),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(18)))),
      onPressed: () {_showImageAlertDialog(context: context, title: text, photoPath: photoPath,);},
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 20)));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(213, 178, 211, 231),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(230, 255, 255, 255),
          title: const Text('Sign Language Translator',
            style: TextStyle( color: Color.fromARGB(255, 56, 50, 50), fontSize: 20)),
          elevation: 2,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CurveBar()),
              );
            },
          ),
        ),
        body: Column(
          children: [
            const Spacer(
              flex: 4,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 200,
              ),
            ),
            const Text(
              'Colors',
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 29,
              ),
            ),
            const Spacer(
              flex: 6,
            ),
            CustomElevatedButton(
              text: 'Red',
              photoPath: 'assets/color/red.gif',
              color: const Color.fromARGB(172, 218, 77, 67),
            ),
            const Spacer(
              flex: 4,
            ),
            CustomElevatedButton(
              text: 'Orange',
              photoPath: 'assets/color/orange.gif',
              color: const Color.fromARGB(255, 227, 158, 53),
            ),
            const Spacer(
              flex: 4,
            ),
            CustomElevatedButton(
              text: 'Yellow',
              photoPath: 'assets/color/yellow.gif',
              color: const Color.fromARGB(180, 235, 219, 76),
            ),
            const Spacer(
              flex: 4,
            ),
            CustomElevatedButton(
              text: 'Green',
              photoPath: 'assets/color/green.gif',
              color: const Color.fromARGB(194, 76, 175, 79),
            ),
            const Spacer(
              flex: 4,
            ),
            CustomElevatedButton(
              text: 'Blue',
              photoPath: 'assets/color/blue.gif',
              color: const Color.fromARGB(201, 68, 150, 218),
            ),
            const Spacer(
              flex: 4,
            ),
            CustomElevatedButton(
              text: 'Black',
              photoPath: 'assets/color/black.gif',
              color: Colors.black87,
            ),
            const Spacer(
              flex: 4,
            ),
            CustomElevatedButton(
              text: 'White',
              photoPath: 'assets/color/white.gif',
              color: Colors.white70,
            ),
            const Spacer(
              flex: 12,
            )
          ])
      )
    );}
}
