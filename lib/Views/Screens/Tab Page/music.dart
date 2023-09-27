import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:media_booster/Utils/List/AudioList/audiolist.dart';

import '../../../Model/audiomodel.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(.8),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              carouselController: carouselController,
              items: listsong
                  .map((e) => GestureDetector(
                        onTap: () {
                          AudioModel m = AudioModel(
                            audio: e['audio'],
                            image: e['image'],
                            title: e['title'],
                          );
                          Navigator.pushNamed(context, 'songdetail',
                              arguments: m);
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("${e['image']}"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ))
                  .toList(),
              options: CarouselOptions(
                height: 350,
                scrollDirection: Axis.horizontal,
                enlargeCenterPage: true,
                autoPlay: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Songs for You",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ...listsong
                .map(
                  (e) => Container(
                    height: 60,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: ListTile(
                        leading: CircleAvatar(
                          foregroundImage: AssetImage("${e["image"]}"),
                        ),
                        title: Text(
                          "${e["title"]}",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        titleAlignment: ListTileTitleAlignment.center,
                        trailing: IconButton(
                          onPressed: () {
                            AudioModel m = AudioModel(
                              audio: e['audio'],
                              image: e['image'],
                              title: e['title'],
                            );
                            Navigator.pushNamed(context, 'songdetail',
                                arguments: m);
                          },
                          icon: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
                .toList()
          ],
        ),
      ),
    );
  }
}
