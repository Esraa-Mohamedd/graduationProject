// ignore_for_file: unused_import, use_super_parameters, unused_local_variable, avoid_print, depend_on_referenced_packages

import 'dart:io';
import 'package:check/pages/curvedNav.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
          // bottomNavigationBar: CurvedNavigationBar(
          //   index: _currentIndex,
          //   height: 60,
          //   backgroundColor: Colors.transparent,
          //   color: Colors.white,
          //   buttonBackgroundColor: Colors.white,
          //   items: const <Widget>[
          //     Icon(Icons.translate, size: 30),
          //     Icon(Icons.home, size: 30),
          //     Icon(Icons.menu_book_outlined, size: 30),
          //   ],
          //   onTap: (index) {
          //     setState(() {
          //       _currentIndex = index;
          //     });
          //
          //     // Navigate to the corresponding page based on the index
          //     switch (_currentIndex) {
          //       case 0:
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => CameraPage()),
          //         );
          //         break;
          //       case 1:
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => FeaturesPage()),
          //         );
          //         break;
          //       case 2:
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => LearnBasics()),
          //         );
          //         break;
          //       default:
          //         break;
          //     }
          //   },
          // ),
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
          body: Center(
            child: Column(
              children: [
                const SizedBox(height: 250),
                ElevatedButton(
                  onPressed: () async {await recordVideoFile();},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 10,
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.camera_alt_outlined, size: 20, color: Colors.black,),
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

      // loading circle
      showDialog(context: context,
        barrierDismissible: false,
        builder: (context) {
          return Center(child: CircularProgressIndicator());
        },
      );

      if (videoFile != null) {
        File file = File(videoFile.path);
        String namevideo = p.basename(videoFile.path);

        // Navigator.of(context).pop();

        // Start upload
        Reference refStorage =
        FirebaseStorage.instance.ref("videos/$namevideo");
        await refStorage.putFile(file);

        // Get download URL
        String url = await refStorage.getDownloadURL();

        // Dismiss the loading dialog
        Navigator.of(context).pop();

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

      // loading circle
      showDialog(context: context,
        barrierDismissible: false,
        builder: (context) {
        return Center(child: CircularProgressIndicator());
      },
      );

      if (videoFile != null) {
        File file = File(videoFile.path);
        String namevideo = p.basename(videoFile.path);
        // Start upload
        Reference refStorage = FirebaseStorage.instance.ref(
            "videos/$namevideo");

        await refStorage.putFile(file);

        // Get download URL
        String url = await refStorage.getDownloadURL();

        Navigator.of(context).pop();

        print("Upload complete. URL: $url");
      } else {
        print("Please choose a video");
      }
    } catch (e) {
      print("Error uploading video: $e");
    }
  }
}
