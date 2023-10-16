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
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(.8),
      body: SingleChildScrollView(
        child: Column(
          children: listvideo
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
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: h * .3,
                          width: w,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("${e['vimage']}"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "${e['vtitle']}",
                            style: TextStyle(
                              color: Colors.white54,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
