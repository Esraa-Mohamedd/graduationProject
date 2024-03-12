// ignore_for_file: unused_local_variable, prefer_const_constructors, sized_box_for_whitespace, avoid_print

import 'package:check/pages/camera_page.dart';
import 'package:check/pages/features_page.dart';
import 'package:check/pages/learn_basics.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const CustomElevatedButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

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
      onPressed: () {},
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
  int _currentIndex = 0;
  late Database database;
  @override
  void initState() {
    super.initState();
    createDatabase();
  }

  void createDatabase() async {
  database = await openDatabase(
    'project.db',
    version: 1,
    onCreate: (database, version) {
      print('date created');
      database
          .execute(
              'CREATE TABLE alphabets (id INTEGER PRIMARY KEY , alphabet TEXT)')
          .then((value) {})
          .catchError((error) {
        print('error ${error.toString()}');
      });
    },
    onOpen: (database) {
      print('data opened');
    },
  );
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(213, 178, 211, 231),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.translate),
              label: 'Translator',
              backgroundColor: Colors.grey,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.grey,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_outlined),
              label: 'Learn',
              backgroundColor: Colors.black,
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              if (_currentIndex == 0) {
                // Action for the 'Translator' tab
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CameraPage()),
                );
              } else if (_currentIndex == 1) {
                // Action for the 'Home' tab
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FeaturesPage()),
                );
              } else if (_currentIndex == 2) {
                // Action for the 'Learn' tab
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LearnBasics()),
                );
              }
            });
          },
        ),
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
                MaterialPageRoute(builder: (context) => LearnBasics()),
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height, // Set a fixed height
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
                      onPressed: () {},
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'B',
                      onPressed: () {},
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'C',
                      onPressed: () {},
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
                      onPressed: () {},
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'E',
                      onPressed: () {},
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'F',
                      onPressed: () {},
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
                      onPressed: () {},
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'H',
                      onPressed: () {},
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'I',
                      onPressed: () {},
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
                      onPressed: () {},
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'K',
                      onPressed: () {},
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'L',
                      onPressed: () {},
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
                      onPressed: () {},
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'N',
                      onPressed: () {},
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'O',
                      onPressed: () {},
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
                      onPressed: () {},
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'Q',
                      onPressed: () {},
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'R',
                      onPressed: () {},
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
                      onPressed: () {},
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'T',
                      onPressed: () {},
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'U',
                      onPressed: () {},
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
                      onPressed: () {},
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'W',
                      onPressed: () {},
                    ),
                    const Spacer(
                      flex: 100,
                    ),
                    CustomElevatedButton(
                      buttonText: 'X',
                      onPressed: () {},
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
                      onPressed: () {},
                    ),
                    const Spacer(
                      flex: 50,
                    ),
                    CustomElevatedButton(
                      buttonText: 'Z',
                      onPressed: () {},
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


