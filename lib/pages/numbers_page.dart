import 'package:check/pages/curvedNav.dart';
import 'package:flutter/material.dart';

class NumbersPage extends StatefulWidget {
  const NumbersPage({super.key});

  @override
  State<NumbersPage> createState() => _NumbersPageState();
}

class _NumbersPageState extends State<NumbersPage> {
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
    required BuildContext context, // Add required context parameter
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(70, 60),
        backgroundColor: const Color.fromARGB(178, 255, 255, 255),
        padding: const EdgeInsets.symmetric(
          horizontal: 0,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18)),
        ),
      ),
      onPressed: () {
        _showImageAlertDialog(
          context: context,
          title: text,
          photoPath: photoPath,
        );
      },
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
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
            icon: const Icon(Icons.arrow_back,color: Colors.black,),
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
                    text:'1',
                photoPath: 'assets/number/1.png',context: context,),

                const Spacer(
                  flex: 100,
                ),
                CustomElevatedButton(
                  text: '2',
                  photoPath: 'assets/number/2.png',
                  context: context,
                ),
                const Spacer(
                  flex: 100,
                ),
                CustomElevatedButton(
                    text:'3',
                    photoPath: 'assets/number/3.png',
                  context: context,),

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
                    text:'4',
                    photoPath: 'assets/number/4.png',context: context,),
                const Spacer(
                  flex: 100,
                ),
                CustomElevatedButton(
                    text:'5',
                    photoPath: 'assets/number/5.png',context: context,),
                const Spacer(
                  flex: 100,
                ),
                CustomElevatedButton(
                    text:'6',
                    photoPath: 'assets/number/6.png',context: context,),
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
                    text:'7',
                    photoPath: 'assets/number/7.png',context: context,),
                const Spacer(
                  flex: 100,
                ),
                CustomElevatedButton(
                    text:'8',
                    photoPath: 'assets/number/8.png',context: context,),
                const Spacer(
                  flex: 100,
                ),
                CustomElevatedButton(
                    text:'9',
                    photoPath: 'assets/number/9.png',context: context,),
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
                    text:'10',
                    photoPath: 'assets/number/10.gif',context: context,),
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
