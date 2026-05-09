import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_play_app/config/app_theme.dart';
import 'package:video_play_app/data/repository/video_repository.dart';
import 'package:video_play_app/presentation/screens/home/home_screen.dart';
import 'package:video_play_app/presentation/screens/home/providers/home_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => HomeProvider(VideoRepository())..getVideoPostList()),
      ],
      child: MaterialApp(
        theme: AppTheme().getTheme(),
        title: 'Video App',
        home: const HomeScreen(),
      ),
    );
  }
}
