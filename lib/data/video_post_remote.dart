import 'package:video_play_app/domain/video_post.dart';

class VideoPostRemote {
  
  VideoPostRemote({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  factory VideoPostRemote.fromJson(Map<String, dynamic> json) {
    return VideoPostRemote(
      name: json['name'] as String,
      videoUrl: json['videoUrl'] as String,
      likes: json['likes'] as int,
      views: json['views'] as int,
    );
  }

  // Mapper
  VideoPost toEntity() {
    return VideoPost(
      caption: name,
      videoURL: videoUrl,
      likes: likes,
      views: views,
    );
  }
}