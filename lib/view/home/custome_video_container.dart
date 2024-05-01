// import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:lecle_yoyo_player/lecle_yoyo_player.dart';
import 'package:nireekshina/view/home/full_screen.dart';
// import 'package:video_player/video_player.dart';

class CustomVideoContainer extends StatefulWidget {
  const CustomVideoContainer({
    required this.videoLink,
    super.key});
  final String videoLink;
  @override
  State<CustomVideoContainer> createState() => _CustomVideoContainerState();
}

class _CustomVideoContainerState extends State<CustomVideoContainer> {
  // late VideoPlayerController videoPlayerController;
  // late ChewieController chewieController;

  @override
  void initState() {
    super.initState();
    // videoPlayerController =
    //     VideoPlayerController.networkUrl(Uri.parse(widget.videoLink.toString()))
    //       ..initialize().then((_) {
    //         setState(() {
    //           videoPlayerController.play();
    //         });
    //       });
    // videoPlayerController.
  }

  // @override
  // void dispose() {
  //   videoPlayerController.dispose();
  //   chewieController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 15.0
                  )
                ]
              ),
              child: Column(
                children: [
                  YoYoPlayer(
    aspectRatio: 16 / 9,
    url: widget.videoLink,
    videoStyle: VideoStyle(
      fullscreenIcon: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FullScreen(videoLink: widget.videoLink)));
        },
        child: Icon(
                        Icons.screen_rotation,
                        color: Colors.white,
                        size: 30,
                      ),
      )
    ),
    onFullScreen: (val){

    },
    videoLoadingStyle: VideoLoadingStyle(),
  ),
  const SizedBox(height: 15,),
  Text(
    "NIREEKSHANA TV is India's Leading Christian Satellite Channel that presents faith based content 24/7 in the languages of Telugu. The objective of Nireekshana TV is to reach out to the unreached. We strive to telecast content relevant to Christian Faith and serve as a global window of faith to the vast majority of Telugu Christians around the world. To Book your SLOT, please call +91 8008650033",
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500
    ),
  )
                ],
              ),
            );
  }
}