import 'package:check/pages/learn_basics.dart';
import 'package:flutter/material.dart';
import 'camera_page.dart';
import 'features_page.dart';

class NumbersPage extends StatefulWidget {
  const NumbersPage({super.key});

  @override
  State<NumbersPage> createState() => _NumbersPageState();
}

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const CustomElevatedButton({super.key, 
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(70, 60),
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

class _NumbersPageState extends State<NumbersPage> {
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
              }
              else if (_currentIndex == 1) {
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
              flex: 40,
            ),
            const Text(
              'Numbers',
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 29,
              ),
            ),
            const Spacer(
              flex: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(
                  flex: 195,
                ),
                CustomElevatedButton(
                  buttonText: '1',
                  onPressed: () {},
                ),
                const Spacer(
                  flex: 100,
                ),
                CustomElevatedButton(
                  buttonText: '2',
                  onPressed: () {},
                ),
                const Spacer(
                  flex: 100,
                ),
                CustomElevatedButton(
                  buttonText: '3',
                  onPressed: () {},
                ),
                const Spacer(
                  flex: 195,
                ),
              ],
            ),
            const Spacer(
              flex: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(
                  flex: 195,
                ),
                CustomElevatedButton(
                  buttonText: '4',
                  onPressed: () {},
                ),
                const Spacer(
                  flex: 100,
                ),
                CustomElevatedButton(
                  buttonText: '5',
                  onPressed: () {},
                ),
                const Spacer(
                  flex: 100,
                ),
                CustomElevatedButton(
                  buttonText: '6',
                  onPressed: () {},
                ),
                const Spacer(
                  flex: 195,
                ),
              ],
            ),
            const Spacer(
              flex: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(
                  flex: 195,
                ),
                CustomElevatedButton(
                  buttonText: '7',
                  onPressed: () {},
                ),
                const Spacer(
                  flex: 100,
                ),
                CustomElevatedButton(
                  buttonText: '8',
                  onPressed: () {},
                ),
                const Spacer(
                  flex: 100,
                ),
                CustomElevatedButton(
                  buttonText: '9',
                  onPressed: () {},
                ),
                const Spacer(
                  flex: 195,
                ),
              ],
            ),
            const Spacer(
              flex: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(
                  flex: 100,
                ),
                CustomElevatedButton(
                  buttonText: '10',
                  onPressed: () {},
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
    );
  }
}
