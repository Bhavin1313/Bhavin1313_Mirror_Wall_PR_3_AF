import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:media_booster/Model/videomodel.dart';
import 'package:video_player/video_player.dart';

class VideoDetail extends StatefulWidget {
  const VideoDetail({super.key});

  @override
  State<VideoDetail> createState() => _VideoDetailState();
}

class _VideoDetailState extends State<VideoDetail> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  Widget build(BuildContext context) {
    VideoModel data = ModalRoute.of(context)!.settings.arguments as VideoModel;
    setState(() {
      videoPlayerController = VideoPlayerController.asset("${data.video}")
        ..initialize().then((_) {
          setState(() {});
        });
      chewieController =
          ChewieController(videoPlayerController: videoPlayerController);
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Chewie(
          controller: chewieController,
        ),
      ),
    );
  }
}
