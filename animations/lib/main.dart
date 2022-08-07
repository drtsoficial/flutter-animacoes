import 'package:flutter/material.dart';
import 'package:animations/animations/radial_menu.dart';
import 'package:animations/animations/airbnb_loading.dart';
import 'package:animations/animations/animated_background.dart';
import 'package:animations/animations/animated_play_button.dart';
import 'package:animations/animations/dice_animation.dart';
import 'package:animations/animations/gradient_play_button.dart';
import 'package:animations/animations/like_button.dart';
import 'package:animations/animations/loop_button.dart';
import 'package:animations/animations/music_wave.dart';
import 'package:animations/animations/notification_rotation.dart';
import 'package:animations/animations/ontap_animation.dart';
import 'package:animations/animations/radio_buttom.dart';
import 'package:animations/animations/tiktok_loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animações Divertidas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const TikTokLoading(),
    );
  }
}
