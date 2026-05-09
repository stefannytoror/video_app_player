import 'package:flutter/material.dart';
import 'package:video_play_app/config/numeric_formatter.dart';
import 'package:video_play_app/domain/video_post.dart';
import 'package:video_play_app/presentation/widgets/video/video_content.dart';

class VideoContainer extends StatelessWidget {
  const VideoContainer({super.key, required this.video});

  final VideoPost video;

  @override
  Widget build(BuildContext context) {
    // Stack allows put widgets over each other in different places
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox.expand(child: VideoContent(url: video.videoURL, caption: video.caption)),

        Positioned(
          right: 20,
          bottom: 40,
          child: MediaSideActions(video: video)
        ),
      ],
    );
  }
}

class MediaSideActions extends StatelessWidget {

  const MediaSideActions({super.key, required this.video});

  final VideoPost video;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          _CustomIconButton(
            icon: Icons.favorite,
            iconColor: Colors.red,
            value: NumericFormatter.compactFormat(video.likes.toDouble()).toString(),
            valueColor: Colors.white,
          ),

          const SizedBox(height: 15),

          _CustomIconButton(
            icon: Icons.remove_red_eye_outlined,
            iconColor: Colors.white,
            value:  NumericFormatter.compactFormat(video.views.toDouble()).toString(),
            valueColor: Colors.white,
          ),

          const SizedBox(height: 15),

           const _CustomIconButton(
            icon: Icons.play_circle_outline,
            iconColor: Colors.white,
            value: '',
            valueColor: Colors.white,
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}


class _CustomIconButton extends StatelessWidget {
  const _CustomIconButton({
    required this.icon,
    required this.iconColor,
    required this.value,
    required this.valueColor,
  });

  final IconData icon;
  final Color iconColor;
  final String value;
  final Color valueColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(icon, color: iconColor, size: 30),
        ),
        
        Text(
          value,
          style: TextStyle(color: valueColor),
        )
      ],
    );
  }
}
