import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/yourlibrary.dart';

import '../globals.dart';
import '../models/Music.dart';
import 'home.dart';
import 'search.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer _audioPlayer=new AudioPlayer();
  var Tabs = [];
  int currentTabIndex = 0;
  bool isPlaying=false;
  Music? music;

  Widget miniPlayer(Music? music,{bool stop=false}) {
    this.music=music;
    setState(() {

    });
    if(music==null){
      return SizedBox();
    }
    if(stop){
      isPlaying=false;
      _audioPlayer.stop();
    }
    setState(() {

    });
    Size deviceSize = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      color: Colors.grey.shade700,
      width: deviceSize.width,
      height: 50,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(music.image, fit: BoxFit.cover),
          Container(
            width: 300,
            padding: EdgeInsets.only(left: 11),
            child: Text(
              music.name,
              style: TextStyle(color: Colors.white),
            ),
          ),
          IconButton(
            onPressed: () async{
              isPlaying=!isPlaying;
              if(isPlaying){
                await _audioPlayer.play(music.audioURL);
              }
              else
                {
                  await _audioPlayer.pause();
                }
              setState(() {

              });
            },
            icon:isPlaying
                ? Icon(Icons.pause,color: Colors.white,)
                : Icon(Icons.play_arrow,color: Colors.white,),

          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Tabs=[Home(miniPlayer), Search(), YourLibrary()];
  }
  //UI design code goes inside build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Tabs[currentTabIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          miniPlayer(music),
          BottomNavigationBar(
            currentIndex: currentTabIndex,
            onTap: (currentIndex) {
              currentTabIndex = currentIndex;
              n = currentIndex;
              setState(() {});
            },
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white54,
            backgroundColor: Colors.black45,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    //color: Colors.white,
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.library_music_rounded,
                    //color: Colors.white,
                  ),
                  label: 'Library'),
            ],
          ),
        ],
      ),
    );
  }
}
