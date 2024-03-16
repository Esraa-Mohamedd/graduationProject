import 'package:check/pages/camera_page.dart';
import 'package:check/pages/features_page.dart';
import 'package:check/pages/learn_basics.dart';
import 'package:flutter/material.dart';


// ignore: use_key_in_widget_constructors
class GreetingPage extends StatefulWidget {
  @override
  State<GreetingPage> createState() => _GreetingPageState();
}

class _GreetingPageState extends State<GreetingPage> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(213, 178, 211, 231),
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
                  MaterialPageRoute(builder: (context) => const CameraPage()),
                );
              }
              else if (_currentIndex == 1) {
                // Action for the 'Home' tab
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FeaturesPage()),
                );
              } else if (_currentIndex == 2) {
                // Action for the 'Learn' tab
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LearnBasics()),
                );
              }
            });
          },
        ),
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
            icon: const Icon(Icons.arrow_back,color: Colors.black,),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LearnBasics()),
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
            // ignore: avoid_unnecessary_containers
            Container(
              child: const Text(
                'Greetings',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 29,
                ),
              ),
            ),
            const Spacer(
              flex: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(
                  flex: 300,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 50),
                    backgroundColor: Colors.white60,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Hello',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
                const Spacer(
                  flex: 100,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 50),
                    backgroundColor: Colors.white60,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Good Bye',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Spacer(
                  flex: 295,
                ),
              ],
            ),
            const Spacer(
              flex: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(
                  flex: 300,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 50),
                    backgroundColor: Colors.white60,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Good Morning',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.7,
                    ),
                  ),
                ),
                const Spacer(
                  flex: 100,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 50),
                    backgroundColor: Colors.white60,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Good Afternoon',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                const Spacer(
                  flex: 290,
                ),
              ],
            ),
            const Spacer(
              flex: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(
                  flex: 300,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 50),
                    backgroundColor: Colors.white60,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 0,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Good Night',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                const Spacer(
                  flex: 100,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 50),
                    backgroundColor: Colors.white60,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'See You Later',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
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
