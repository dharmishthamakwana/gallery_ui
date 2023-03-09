import 'package:flutter/material.dart';
import 'package:gallery_ui/screens/home/provider/home_provider.dart';
import 'package:gallery_ui/screens/home/view/gallery_screen.dart';
import 'package:gallery_ui/screens/home/view/home_screen.dart';
import 'package:gallery_ui/screens/pageview/view/page_view_screen.dart';
import 'package:gallery_ui/screens/profile/view/profile_screen.dart';
import 'package:provider/provider.dart';

import 'screens/video/view/video_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Homeprovider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        routes: {
          '/': (context) => HomePage(),
          'gal': (context) => gallery(),
          'vid': (context) => video(),
          'pro': (context) => Profile(),
          'pageview':(context) => pageview(),
        },
      ),
    ),
  );
}
