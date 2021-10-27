import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:videoplayer/provider/provide_images.dart';

import 'menu_principal.dart';

class VideoPlayerScreen extends StatefulWidget {
  String videos = '';
  bool play = true;
  double volume = 0;
  VideoPlayerScreen(this.videos, this.play, this.volume);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _Vcontroller;
  late Future<void> _initializeVideoPlayerFuture;
  String video = '';
  void correct() {
    if (video.contains('.'))
      video = video.replaceRange(video.indexOf('.'), video.length, '.mp4');

    print(video);
  }

  @override
  void initState() {
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    //  or the internet.
    // _Vcontroller = VideoPlayerController.network(
    //   'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    // );

    video = widget.videos;
    correct();
    print('video- > $video');
    _Vcontroller = VideoPlayerController.asset(video);

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _Vcontroller.initialize();

    // Use the controller to loop the video.
    _Vcontroller.setLooping(true);
    _Vcontroller.play();

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _Vcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProvideImages>(context);
    bool play = widget.play;
    double volume = widget.volume;
    // video = widget.videos;
    // correct();

    if (play)
      _Vcontroller.play();
    else
      _Vcontroller.pause();

    _Vcontroller.setVolume(volume);
    return Scaffold(
      // Use a FutureBuilder to display a loading spinner while waiting for the
      // VideoPlayerController to finish initializing.
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          // if (snapshot.connectionState == ConnectionState.done) {

          if (_Vcontroller.value.isInitialized) {
            // If the VideoPlayerController has finished initialization, use
            // the data it provides to limit the aspect ratio of the video.
            return AspectRatio(
              aspectRatio: _Vcontroller.value.aspectRatio,
              // Use the VideoPlayer widget to display the video.
              child: VideoPlayer(_Vcontroller),
            );
          } else {
            // If the VideoPlayerController is still initializing, show a
            // loading spinner.
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
