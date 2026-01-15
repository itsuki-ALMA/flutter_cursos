import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import '../../models/course.dart';

class VideoPlayer extends StatefulWidget {
  final Course course;

  const VideoPlayer({super.key, required this.course});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  VideoPlayerController? _videoPlayerController;
  ChewieController? _chewieController;
  bool _isVideoReady = false;

  @override
  void initState() {
    super.initState();

    if (widget.course.hasVideo) {
      _videoPlayerController =
          VideoPlayerController.asset(widget.course.videoUrl!);

      _videoPlayerController!.initialize().then((_) {
        _videoPlayerController!.setVolume(1.0);

        _chewieController = ChewieController(
          videoPlayerController: _videoPlayerController!,
          autoPlay: false,
          looping: false,
          allowPlaybackSpeedChanging: true,
          allowFullScreen: true,
          allowMuting: true,
        );

        setState(() {
          _isVideoReady = true;
        });
      });
    }
  }

  @override
  void dispose() {
    _chewieController?.dispose();
    _videoPlayerController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.course.hasVideo) {
      return const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'Vídeo indisponível, contate o suporte.',
          style: TextStyle(color: Colors.red),
        ),
      );
    }

    if (!_isVideoReady) {
      return const Center(child: CircularProgressIndicator());
    }

    return AspectRatio(
      aspectRatio: _videoPlayerController!.value.aspectRatio,
      child: Chewie(controller: _chewieController!),
    );
  }
}
