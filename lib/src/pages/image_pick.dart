import 'package:My_city/src/pages/preveiw.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart';
import 'dart:async';

class Camera extends StatefulWidget {
  
  @override
  _CameraState createState() => _CameraState();
}


class _CameraState extends State<Camera> {

CameraController _controller;
Future<void> _initializeControllerFuture;
bool isCameraReady = false;
bool showCapturedPhoto = false;
var ImagePath;

@override
void initState() {
  super.initState();
  _initializeCamera(); 
  
}
Future<void> _initializeCamera() async {
  final cameras = await availableCameras();
  final firstCamera = cameras.first;
  _controller = CameraController(firstCamera,ResolutionPreset.high);
  _initializeControllerFuture = _controller.initialize();
  if (!mounted) {
    return;
  }
  setState(() {
    isCameraReady = true;
  });
}

@override
void didChangeAppLifecycleState(AppLifecycleState state) {
  if (state == AppLifecycleState.resumed) {
    _controller != null
        ? _initializeControllerFuture = _controller.initialize()
        : null; //on pause camera is disposed, so we need to call again "issue is only for android"
  }
}
// void onCaptureButtonPressed() async {  //on camera button press
//   try {

//     final path = join(
//       (await getTemporaryDirectory()).path,'$pageStatus${DateTime.now()}.png',
//     );
//     ImagePath = path;
//     await _controller.takePicture(path); //take photo

//     setState(() {
//       showCapturedPhoto = true;
//     });
//   } catch (e) {
//     print(e);
//   }
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<void>(
  future: _initializeControllerFuture,
  builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        // If the Future is complete, display the preview.
        return Transform.scale(
            scale: _controller.value.aspectRatio,
            child: Center(
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: CameraPreview(_controller), //cameraPreview
              ),
            ));
      } else {
        return Center(
            child:
                CircularProgressIndicator()); // Otherwise, display a loading indicator.
      }
  },
),


floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera_alt),
        // Provide an onPressed callback.
        onPressed: () async {
          // Take the Picture in a try / catch block. If anything goes wrong,
          // catch the error.
          try {
            // Ensure that the camera is initialized.
            await _initializeControllerFuture;

            // Construct the path where the image should be saved using the
            // pattern package.
            final path = join(
              // Store the picture in the temp directory.
              // Find the temp directory using the `path_provider` plugin.
              (await getTemporaryDirectory()).path,
              '${DateTime.now()}.png',
            );

            // Attempt to take a picture and log where it's been saved.
              // await _controller.takePicture(path);

            // If the picture was taken, display it on a new screen.
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DisplayPictureScreen(imagePath: path),
              ),
            );
          } catch (e) {
            // If an error occurs, log the error to the console.
            print(e);
          }
        },
      ),

    );
  }
}