import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

class CustomVideoPlayer extends StatefulWidget {
  const CustomVideoPlayer({super.key, required this.videoUrl});
  final String? videoUrl;

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _initVideoPlayer();
  }

  Future<void> _initVideoPlayer() async {
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl!));
    await _videoPlayerController.initialize();
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoInitialize: true,
      autoPlay: false,
      showControls: true,
      aspectRatio: 16 / 10,
      placeholder: const Center(
        child: CircularProgressIndicator(),
      ),
      showOptions: false,
      allowFullScreen: false,
      allowPlaybackSpeedChanging: false,
      materialSeekButtonSize: 24,
      materialProgressColors: ChewieProgressColors(
        backgroundColor: Colors.grey.withOpacity(0.5),
        playedColor: Colors.red,
      ),
      errorBuilder: (context, errorMessage) => Center(
        child: Text(errorMessage),
      ),
    );
    setState(() {});
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200.h,
      child: _chewieController != null
          ? ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Center(
                child: Chewie(controller: _chewieController!),
              ),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
