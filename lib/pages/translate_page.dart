// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:check/pages/camera_page.dart';
import 'package:check/pages/features_page.dart';
import 'package:check/pages/learn_basics.dart';
import 'package:check/pages/result_page.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class TranslatePage extends StatefulWidget {
  // ignore: use_super_parameters
  const TranslatePage({Key? key}) : super(key: key);

  @override
  State<TranslatePage> createState() => _TranslatePageState();
}

class _TranslatePageState extends State<TranslatePage> {
  String groubValue = "English";
  final TextEditingController _textEditingController = TextEditingController();
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
                  MaterialPageRoute(builder: (context) => FeaturesPage()),
                );
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    width: 426,
                    height: 400,
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
                            'Language',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color:
                                  Colors.black, // Adjust text color as needed
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
                        Row(
                          children: [
                            Radio(
                                fillColor: MaterialStateProperty.all<Color>(
                                    const Color.fromARGB(255, 133, 171, 203)),
                                value: "English",
                                groupValue: groubValue,
                                onChanged: (value) {
                                  setState(() {
                                    groubValue = value!;
                                  });
                                }),
                            const Text(
                              "English",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Radio(
                                fillColor: MaterialStateProperty.all<Color>(
                                    const Color.fromARGB(255, 133, 171, 203)),
                                value: "Arabic",
                                groupValue: groubValue,
                                onChanged: (value) {
                                  setState(() {
                                    groubValue = value!;
                                  });
                                }),
                            const Text(
                              "Arabic",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _textEditingController,
                                keyboardType: TextInputType.multiline,
                                maxLines: 5,
                                onChanged: (text) {
                                  setState(() {
                                    charCount = text.length;
                                    if (charCount > maxCharCount) {
                                      // Trim the text to the allowed limit
                                      _textEditingController.text =
                                          text.substring(0, maxCharCount);
                                      _textEditingController.selection =
                                          TextSelection.fromPosition(
                                              TextPosition(
                                                  offset: _textEditingController
                                                      .text.length));
                                    }
                                  });
                                },
                                style: TextStyle(fontSize: 18.0),
                                decoration: InputDecoration(
                                  labelText: 'Enter text',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 250),
                                child: Text('$charCount / 100'),
                              ),
                              SizedBox(height: 50),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ResultPage()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 255, 255, 255),
                                  elevation: 0.8,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 90, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(width: 8),
                                    Text(
                                      'Translate',
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
