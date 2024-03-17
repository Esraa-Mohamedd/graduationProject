// ignore_for_file: unused_local_variable, prefer_const_constructors, sized_box_for_whitespace, avoid_print

import 'package:check/pages/camera_page.dart';
import 'package:check/pages/curvedNav.dart';
import 'package:check/pages/features_page.dart';
import 'package:check/pages/learn_basics.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const CustomElevatedButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(70, 60),
        backgroundColor: const Color.fromARGB(178, 255, 255, 255),
        padding: const EdgeInsets.symmetric(
          horizontal: 0,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(18),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
    );
  }
}

class AlphabetPage extends StatefulWidget {
  const AlphabetPage({super.key});

  @override
  State<AlphabetPage> createState() => _AphabetPageState();
}

class _AphabetPageState extends State<AlphabetPage> {
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
              children: [
                Image.asset( photoPath,height: 300, width: 300)])),
          actions: [
            TextButton(
              onPressed: () {Navigator.of(context).pop();},
              child: Text('Close'))]);});
  }

  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(213, 178, 211, 231),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(230, 255, 255, 255),
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
                MaterialPageRoute(builder: (context) => CurveBar()),
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery
                .of(context)
                .size
                .height, // Set a fixed height
            child: Column(
              children: [
                SizedBox(height: 25),
                const Text(
                  'Alphabets',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 29,
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Spacer(
                      flex: 195,
                    ),
                    CustomElevatedButton(
                      buttonText: 'A',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'A',
                          photoPath: 'assets/alphabet/A.jpg',
                        );
                      }
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'B',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'B',
                          photoPath: 'assets/alphabet/B.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'C',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'C',
                          photoPath: 'assets/alphabet/C.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 195,
                    ),
                  ],
                ),
                const Spacer(
                  flex: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Spacer(
                      flex: 195,
                    ),
                    CustomElevatedButton(
                      buttonText: 'D',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'D',
                          photoPath: 'assets/alphabet/D.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'E',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'E',
                          photoPath: 'assets/alphabet/E.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'F',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'F',
                          photoPath: 'assets/alphabet/F.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 195,
                    ),
                  ],
                ),
                const Spacer(
                  flex: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Spacer(
                      flex: 195,
                    ),
                    CustomElevatedButton(
                      buttonText: 'G',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'G',
                          photoPath: 'assets/alphabet/G.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'H',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'H',
                          photoPath: 'assets/alphabet/H.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'I',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'I',
                          photoPath: 'assets/alphabet/I.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 195,
                    ),
                  ],
                ),
                const Spacer(
                  flex: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Spacer(
                      flex: 195,
                    ),
                    CustomElevatedButton(
                      buttonText: 'J',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'J',
                          photoPath: 'assets/alphabet/J.gif',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'K',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'K',
                          photoPath: 'assets/alphabet/K.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'L',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'L',
                          photoPath: 'assets/alphabet/L.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 195,
                    ),
                  ],
                ),
                const Spacer(
                  flex: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Spacer(
                      flex: 195,
                    ),
                    CustomElevatedButton(
                      buttonText: 'M',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'M',
                          photoPath: 'assets/alphabet/M.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'N',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'N',
                          photoPath: 'assets/alphabet/N.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'O',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'O',
                          photoPath: 'assets/alphabet/O.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 195,
                    ),
                  ],
                ),
                const Spacer(
                  flex: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Spacer(
                      flex: 195,
                    ),
                    CustomElevatedButton(
                      buttonText: 'P',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'P',
                          photoPath: 'assets/alphabet/P.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'Q',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'Q',
                          photoPath: 'assets/alphabet/Q.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'R',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'R',
                          photoPath: 'assets/alphabet/R.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 195,
                    ),
                  ],
                ),
                const Spacer(
                  flex: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Spacer(
                      flex: 195,
                    ),
                    CustomElevatedButton(
                      buttonText: 'S',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'S',
                          photoPath: 'assets/alphabet/S.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'T',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'T',
                          photoPath: 'assets/alphabet/T.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'U',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'U',
                          photoPath: 'assets/alphabet/U.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 195,
                    ),
                  ],
                ),
                const Spacer(
                  flex: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Spacer(
                      flex: 195,
                    ),
                    CustomElevatedButton(
                      buttonText: 'V',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'V',
                          photoPath: 'assets/alphabet/V.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'W',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'W',
                          photoPath: 'assets/alphabet/W.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'X',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'X',
                          photoPath: 'assets/alphabet/X.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 195,
                    ),
                  ],
                ),
                const Spacer(
                  flex: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Spacer(
                      flex: 195,
                    ),
                    CustomElevatedButton(
                      buttonText: 'Y',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'Y',
                          photoPath: 'assets/alphabet/Y.jpg',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 50,
                    ),
                    CustomElevatedButton(
                      buttonText: 'Z',
                      onPressed: () {
                        _showImageAlertDialog(
                          context: context,
                          title: 'Z',
                          photoPath: 'assets/alphabet/Z.gif',
                        );
                      },
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                  ],
                ),
                const Spacer(
                  flex: 200,
                ),
              ],
            ),
          ),
        ),
      ),


    );
  }

}
