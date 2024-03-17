import 'package:check/pages/curvedNav.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ExpressionPage extends StatefulWidget {
  @override
  State<ExpressionPage> createState() => _ExpressionPageState();
}

class _ExpressionPageState extends State<ExpressionPage> {
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
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(150, 50),
        backgroundColor: Colors.white60,
        minimumSize: const Size(90, 50),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18)),
        ),
      ),
      onPressed: () {
        _showImageAlertDialog(context: context, title: text, photoPath: photoPath);
      },
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(213, 178, 211, 231),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(230, 255, 255, 255),
          title: const Text(
            'Sign Language Translator',
            style: TextStyle(
              color: Color.fromARGB(255, 56, 50, 50),
              fontSize: 20,
            ),
          ),
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(
              flex: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 400,
              ),
            ),
            const Text(
              'Expressions',
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 29,
              ),
            ),
            const Spacer(
              flex: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(
                  flex: 300,
                ),
                CustomElevatedButton(
                  text: 'Happy',
                  photoPath: 'assets/expression/happy.gif',
                ),
                const Spacer(
                  flex: 100,
                ),
                CustomElevatedButton(
                  text: 'Angry',
                  photoPath: 'assets/expression/angry.gif',
                ),
                const Spacer(
                  flex: 295,
                ),
              ],
            ),
            const Spacer(
              flex: 30,
            ),
            Row(
              children: [
                const Spacer(
                  flex: 300,
                ),
                CustomElevatedButton(
                  text: 'Bored',
                  photoPath: 'assets/expression/bored.gif',
                ),
                const Spacer(
                  flex: 100,
                ),
                CustomElevatedButton(
                  text: 'Sad',
                  photoPath: 'assets/expression/sad.gif',
                ),
                const Spacer(
                  flex: 295,
                ),
              ],
            ),
            const Spacer(
              flex: 30,
            ),
            Row(
              children: [
                const Spacer(
                  flex: 300,
                ),
                CustomElevatedButton(
                  text: 'Excited',
                  photoPath: 'assets/expression/excited.gif',
                ),
                const Spacer(
                  flex: 100,
                ),
                CustomElevatedButton(
                  text: 'Nervous',
                  photoPath: 'assets/expression/nervous.gif',
                ),
                const Spacer(
                  flex: 295,
                ),
              ],
            ),
            const Spacer(
              flex: 150,
            ),
          ],
        ),
      ),
    );
  }
}
