import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:video_play_app/presentation/widgets/video/video_gradient_background.dart';

class VideoContent extends StatefulWidget {
  final String url;
  final String caption;

  const VideoContent({super.key, required this.url, required this.caption});

  @override
  State<VideoContent> createState() => _VideoContentState();
}

class _VideoContentState extends State<VideoContent> {
  late VideoPlayerController _controller;

  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.url);
    _controller.setLooping(true);

    _initializeVideoPlayerFuture = _controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    widget.url;
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        }
        return GestureDetector(
          onTap:() => _controller.value.isPlaying ? _controller.pause() : _controller.play(),
          child: AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: Stack(
              children:[ 
                VideoPlayer(_controller..play()),

                VideoGradientBackground(),
          
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(widget.caption, style: const TextStyle(color: Colors.white, fontSize: 20),))
                ]),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
