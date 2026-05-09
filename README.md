# video_play_app

A Flutter video player application that displays a scrollable feed of videos with playback controls.

## Demo

<img width="1080" height="2400" alt="Screenshot_1778356728" src="https://github.com/user-attachments/assets/061e037e-c1ec-4d17-9df7-3620dda487c1" />


## Project Intention

This application provides a TikTok-like video feed experience where users can browse through a collection of videos, play them, and control playback with an intuitive interface. The app demonstrates modern Flutter architecture patterns with clean separation of concerns.

## Functionality

- **Video Feed**: Displays a scrollable list of videos
- **Video Playback**: Play/pause controls for each video
- **Progress Tracking**: Visual progress indicator showing video duration and current position
- **Responsive UI**: Adapts to different screen sizes
- **Local Video Storage**: Videos stored locally in assets for offline access

## Architecture

The project follows a **Clean Architecture** pattern with clear separation of layers:

### Project Structure

```
lib/
├── config/              # App configuration
│   ├── app_theme.dart   # Theme configuration
│   └── numeric_formatter.dart  # Formatting utilities
├── data/                # Data layer
│   ├── repository/      # Repository implementations
│   ├── video_post_list.dart    # Video data models
│   └── video_post_remote.dart  # Remote data sources
├── domain/              # Domain layer
│   └── video_post.dart  # Business entities
└── presentation/        # Presentation layer
    ├── screens/         # Screen widgets
    │   └── home/        # Home screen with provider
    └── widgets/         # Reusable UI components
```

### Layers

1. **Presentation Layer** (`presentation/`)
   - Handles UI rendering and user interactions
   - Uses Provider for state management
   - Contains screens and reusable widgets

2. **Domain Layer** (`domain/`)
   - Defines core business entities
   - Independent of frameworks and external libraries

3. **Data Layer** (`data/`)
   - Implements repositories
   - Manages data sources (local assets, remote APIs)
   - Handles data transformation

4. **Config Layer** (`config/`)
   - Application-wide configurations
   - Theme settings and utility functions

## Technologies Used

- **Flutter**: UI framework
- **Provider**: State management
- **video_player**: Video playback
- **intl**: Internationalization and formatting

## Getting Started

### Prerequisites

- Flutter SDK (3.11.0 or higher)
- Dart SDK

### Installation

1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. Run `flutter run` to start the app

## Resources

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Flutter Documentation](https://docs.flutter.dev/)
- [Provider Package](https://pub.dev/packages/provider)
- [video_player Package](https://pub.dev/packages/video_player)
