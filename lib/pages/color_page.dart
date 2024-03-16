import 'package:check/pages/camera_page.dart';
import 'package:check/pages/features_page.dart';
import 'package:flutter/material.dart';
import 'package:check/pages/learn_basics.dart';

class ColorPage extends StatefulWidget {
  const ColorPage({super.key});

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
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
                MaterialPageRoute(builder: (context) => const LearnBasics()),
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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(180, 40),
                backgroundColor: const Color.fromARGB(172, 218, 77, 67),
                minimumSize: const Size(90, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(18),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Red',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(180, 40),
                backgroundColor: const Color.fromARGB(255, 227, 158, 53),
                minimumSize: const Size(90, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(18),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Orange',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(180, 235, 219, 76),
                fixedSize: const Size(180, 40),
                minimumSize: const Size(90, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(18),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Yellow',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(180, 40),
                backgroundColor: const Color.fromARGB(194, 76, 175, 79),
                minimumSize: const Size(90, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(18),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Green',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(180, 40),
                backgroundColor: const Color.fromARGB(201, 68, 150, 218),
                minimumSize: const Size(90, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(18),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Blue',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(180, 40),
                backgroundColor: Colors.black,
                minimumSize: const Size(90, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(18),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Black',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(180, 40),
                backgroundColor: Colors.white,
                minimumSize: const Size(90, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(18),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'White',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            const Spacer(
              flex: 12,
            ),
          ],
        ),
      ),
    );
  }
}
