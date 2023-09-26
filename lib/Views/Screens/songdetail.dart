import 'package:flutter/material.dart';

import '../../Model/audiomodel.dart';

class SongDetail extends StatefulWidget {
  const SongDetail({super.key});

  @override
  State<SongDetail> createState() => _SondDetailState();
}

class _SondDetailState extends State<SongDetail> {
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
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
          )
        ],
      ),
    );
  }
}
