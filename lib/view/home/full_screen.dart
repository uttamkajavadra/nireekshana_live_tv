import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lecle_yoyo_player/lecle_yoyo_player.dart';
import 'package:nireekshina/view/home/custome_video_container.dart';
import 'package:nireekshina/view/home/home_screen.dart';

class FullScreen extends StatefulWidget {
  const FullScreen({
    required this.videoLink,
    super.key});
  final String videoLink;

  @override
  State<FullScreen> createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(child: Stack(
        children: [
          YoYoPlayer(
          aspectRatio: 16 / 9,
          url: widget.videoLink,
          displayFullScreenAfterInit: true,
          videoStyle: VideoStyle(
          
            fullscreenIcon: InkWell(
              onTap: (){
                SystemChrome.setPreferredOrientations([
            DeviceOrientation.landscapeLeft,
            DeviceOrientation.landscapeRight,
          ]);
              },
              child: Icon(
                              Icons.fullscreen,
                              color: Colors.white,
                              size: 30,
                            ),
            )
          ),
          onFullScreen: (val){
          
          },
          // videoLoadingStyle: VideoLoadingStyle(),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (c) => HomeScreen()),
                  (route) => false);
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(Icons.arrow_back, size: 25, color: Colors.white,),
              ),
            )
        ],
      ),),
    );
  }
}