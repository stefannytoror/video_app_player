
import 'package:flutter/material.dart';
import 'package:video_play_app/domain/video_post.dart';
import 'package:video_play_app/presentation/widgets/video/video_container.dart';

class VideoPageView extends StatelessWidget {

  const VideoPageView({ super.key, required this.videos });

  final List<VideoPost> videos;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        return VideoContainer(video: videos[index]);
      });
  }
}