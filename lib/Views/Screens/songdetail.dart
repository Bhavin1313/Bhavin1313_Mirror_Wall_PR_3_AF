import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import '../../Model/audiomodel.dart';

class SongDetail extends StatefulWidget {
  const SongDetail({super.key});

  @override
  State<SongDetail> createState() => _SondDetailState();
}

class _SondDetailState extends State<SongDetail> {
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

  playAudio() {
    assetsAudioPlayer.open(Audio("${data.audio}"));
  }

  @override
  Widget build(BuildContext context) {
    AudioModel data = ModalRoute.of(context)!.settings.arguments as AudioModel;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.all(18),
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    data.image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text(
              "${data.title}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
