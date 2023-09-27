import 'package:flutter/material.dart';
import 'package:media_booster/Views/Screens/songdetail.dart';
import 'package:provider/provider.dart';

import 'Provider/indexprovider.dart';
import 'Views/Screens/homepage.dart';
import 'Views/Screens/videodetail.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ListenableProvider<ChangeIndexProvider>(
        create: (context) => ChangeIndexProvider(),
      ),
    ],
    builder: (context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => HomePage(),
        'songdetail': (context) => SongDetail(),
        'videodetail': (context) => VideoDetail(),
      },
    ),
  ));
}
