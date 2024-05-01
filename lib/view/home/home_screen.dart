import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nireekshina/view/home/custome_video_container.dart';
import 'package:nireekshina/view/home/full_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset("assets/logo.jpg", width: 35,),
            const SizedBox(width: 15,),
            Text("Nireekshana Live TV",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black
            ),),
          ],
        ),
        actions: [
          InkWell(
            onTap: (){
//               SystemChrome.setPreferredOrientations([
//   DeviceOrientation.landscapeLeft,
//   DeviceOrientation.landscapeRight,
// ]);
Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FullScreen(videoLink: "https://calvary.livebox.co.in/nireekshanahls/nireekshanatv.m3u8")));
            },
            child: CircleAvatar(
              radius: 20,
              child: Icon(Icons.screen_rotation_rounded, color: Colors.black,)),
          ),
          const SizedBox(width: 15,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomVideoContainer(videoLink: "https://calvary.livebox.co.in/nireekshanahls/nireekshanatv.m3u8",),
          ],
        ),
      ),
    );
  }
}