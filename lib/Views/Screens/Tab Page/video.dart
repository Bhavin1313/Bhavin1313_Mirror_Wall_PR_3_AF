import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:media_booster/Model/videomodel.dart';
import 'package:media_booster/Utils/List/VideoList/videolist.dart';

import '../../../Utils/List/AudioList/audiolist.dart';

class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(.8),
      body: CarouselSlider(
        carouselController: carouselController,
        items: listvideo
            .map(
              (e) => GestureDetector(
                onTap: () {
                  VideoModel v = VideoModel(
                    video: 'video',
                    image: 'vimage',
                    title: 'vtitle',
                  );
                  Navigator.pushNamed(context, 'videodetail', arguments: v);
                },
                child: Container(
                  height: 400,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("${e['vimage']}"),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "${e['vtitle']}",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
        options: CarouselOptions(
          height: 800,
          scrollDirection: Axis.vertical,
          enlargeCenterPage: true,
        ),
      ),
    );
  }
}
