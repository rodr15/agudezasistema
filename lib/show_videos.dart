import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:videoplayer/provider/provide_images.dart';

import 'menu_principal.dart';

class VideoPlayerScreen extends StatefulWidget {
  String videos = '';
  bool play = true;

  VideoPlayerScreen(this.videos, this.play);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  void _validation(BuildContext context) async {
    final provider = Provider.of<ProvideImages>(context, listen: false);
    List menu = [];

    if (menu.contains(0))
      menu[menu.indexOf(0) - 1] = 0;
    else
      menu.last = 0;
    provider.setMenus = menu;
    provider.setTriggerVideo = false;
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (BuildContext context) => MenuPrincipal()),
        (route) => true);
  }

  late VideoPlayerController _controller;
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
    // _controller = VideoPlayerController.network(
    //   'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    // );

    video = widget.videos;
    correct();
    print('video- > $video');
    _controller = VideoPlayerController.asset(video);

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
    _controller.play();

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProvideImages>(context);
    bool play = widget.play;

    // video = widget.videos;
    // correct();
    print('');
    print('');
    print(widget.videos);
    print('');
    print('');
    if (play)
      _controller.play();
    else
      _controller.pause();
    return Scaffold(
      // Use a FutureBuilder to display a loading spinner while waiting for the
      // VideoPlayerController to finish initializing.
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          // if (snapshot.connectionState == ConnectionState.done) {

          if (_controller.value.isInitialized) {
            // If the VideoPlayerController has finished initialization, use
            // the data it provides to limit the aspect ratio of the video.
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              // Use the VideoPlayer widget to display the video.
              child: VideoPlayer(_controller),
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
