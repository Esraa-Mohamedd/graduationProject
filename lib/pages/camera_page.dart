// ignore_for_file: unused_import, use_super_parameters, unused_local_variable

import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:check/pages/features_page.dart';
import 'package:check/pages/learn_basics.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
// import 'package:video_compress/video_compress.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
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
                  MaterialPageRoute(builder: (context) => const FeaturesPage()),
                );
              },
            ),
          ),
          body: Center(
            child: Column(
              children: [
                const SizedBox(height: 250),
                ElevatedButton(
                  onPressed: () async {
                    await recordVideoFile();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 10,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.camera_alt_outlined,
                        size: 20,
                        color: Colors.black,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Record Video Here',
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
                const SizedBox(
                  height: 50,
                ),
                Builder(builder: (context) {
                  return ElevatedButton(
                    onPressed: () async {
                      await getVideoFile();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 10,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.video_library_outlined,
                          size: 20,
                          color: Colors.black,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Select Video From Gallery',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
          ),
        ));
  }

//==============================================================================
//   void pickVideo() async {
//     var video = await ImagePicker().pickVideo(source: ImageSource.gallery);
//     setState(() {
//       var _video = video as File;
//     });
//   }

//==============================================================================
  Future<void> recordVideoFile() async {
    try {
      final videoFile = await ImagePicker().pickVideo(
        source: ImageSource.camera,
        maxDuration: const Duration(seconds: 30),
      );
      if (videoFile != null) {
        File file = File(videoFile.path);
        String namevideo = p.basename(videoFile.path);

        // Start upload
        Reference refStorage =
            FirebaseStorage.instance.ref("videos/$namevideo");
        await refStorage.putFile(file);

        // Get download URL
        String url = await refStorage.getDownloadURL();

        print("Upload complete. URL: $url");
      } else {
        print("Please record a video");
      }
    } catch (e) {
      print("Error uploading video: $e");
    }
  }

//==============================================================================
  Future<void> getVideoFile() async {
    try {
      final videoFile = await ImagePicker().pickVideo(
        source: ImageSource.gallery,
        maxDuration: const Duration(seconds: 30),
      );
      if (videoFile != null) {
        File file = File(videoFile.path);
        String namevideo = p.basename(videoFile.path);

        // Start upload
        Reference refStorage =
            FirebaseStorage.instance.ref("videos/$namevideo");
        await refStorage.putFile(file);

        // Get download URL
        String url = await refStorage.getDownloadURL();

        print("Upload complete. URL: $url");
      } else {
        print("Please choose a video");
      }
    } catch (e) {
      print("Error uploading video: $e");
    }
  }
}
