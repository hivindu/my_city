import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

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
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
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
);
  }
}