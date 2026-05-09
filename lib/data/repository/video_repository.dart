import 'package:video_play_app/data/video_post_list.dart';
import 'package:video_play_app/domain/video_post.dart';
import 'package:video_play_app/data/video_post_remote.dart';

class VideoRepository {

  Future<List<VideoPost>> getVideoPostList() async {
    await Future.delayed(const Duration(seconds: 1));
    // Video post list is taken from local resource  video_post_list.dart
    final List<VideoPost> videoListRemote = videoPostsList
        .map((videoJson) => VideoPostRemote.fromJson(videoJson).toEntity())
        .toList();
    
    return videoListRemote; 
  }

}
