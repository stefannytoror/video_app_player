import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_play_app/presentation/screens/home/providers/home_provider.dart';
import 'package:video_play_app/presentation/screens/home/video_page_view.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({ super.key });

  @override
  Widget build(BuildContext context) {
    final HomeProvider provider = context.watch<HomeProvider>();

    return Scaffold(
      body: Center(
        child: provider.isLoading ? const CircularProgressIndicator(strokeWidth: 2) 
          : VideoPageView(videos: provider.videos),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: IconButton(icon: const Icon(Icons.home),
            onPressed: () {
              // Handle home button press
            },),
        ),
      ),
    );
  }

  
} 