import 'package:flutter/material.dart';
import 'package:video_play_app/domain/video_post.dart';
import 'package:video_play_app/data/repository/video_repository.dart';

class HomeProvider extends ChangeNotifier {

  HomeProvider(this._videoRepository);

  final VideoRepository _videoRepository;

  bool isLoading = false;
  List<VideoPost> videos = [];

  Future<void> getVideoPostList() async {
    isLoading = true;
    notifyListeners();

    videos = await _videoRepository.getVideoPostList();
    isLoading = false;
    notifyListeners();
  }
}
