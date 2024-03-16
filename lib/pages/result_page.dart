// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:check/pages/camera_page.dart';
import 'package:check/pages/features_page.dart';
import 'package:check/pages/learn_basics.dart';

// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class ResultPage extends StatefulWidget {
  // ignore: use_super_parameters
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  String groubValue = "English";
  // ignore: prefer_final_fields
  TextEditingController _textEditingController = TextEditingController();
  int charCount = 0;
  int maxCharCount = 100;
  int _currentIndex = 0;

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
                label: 'Sign to Text',
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
                  // Action for the 'sign to text' tab
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
                  MaterialPageRoute(builder: (context) => CameraPage()),
                );
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Container(
                    width: 426,
                    height: 210,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(176, 255, 255, 255),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            'Translation',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Divider(
                            height: 0,
                            thickness: 1,
                            color: Color(0x59757575),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 140),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CameraPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(190, 40),
                          backgroundColor: Colors.white,
                          elevation: 0.8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 8),
                            Text(
                              'Another Sentanse',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}












// for translation box

//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 15),
//                   child: Container(
//                     width: 426,
//                     height: 210,
//                     decoration: BoxDecoration(
//                       color: Color.fromARGB(176, 255, 255, 255),
//                       borderRadius: BorderRadius.circular(25),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(15),
//                           child: Text(
//                             'Translation',
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color:
//                                   Colors.black, // Adjust text color as needed
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: double.infinity,
//                           child: Divider(
//                             height: 0,
//                             thickness: 1,
//                             color: Color(0x59757575),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top:5),
//                       child: ElevatedButton(
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => CameraPage()),
//                           );
//                         },
//                         style: ElevatedButton.styleFrom(
//                           fixedSize: Size(190, 40),
//                           backgroundColor: Colors.white,
//                           elevation: 0.8,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(15),
//                           ),
//                         ),
//                         child: Row(
                        
//                           children: [
//                             SizedBox(width: 8),
//                             Text(
//                               'Another Sentanse',
//                               style: TextStyle(
//                                 fontFamily: 'Poppins',
//                                 color: Colors.black,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 )