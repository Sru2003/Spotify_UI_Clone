import 'package:flutter/material.dart';
import 'package:spotify_clone/models/category.dart';
import 'package:spotify_clone/services/MusicOperations.dart';
import 'package:spotify_clone/services/category_operations.dart';

import '../models/Music.dart';

class Home extends StatelessWidget {
  //const Home({Key? key}) : super(key: key);
  Function _miniPlayer;
  Home(this._miniPlayer);
  Widget createCategory(Category category) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade700,
        borderRadius: BorderRadius.circular(11),
      ),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(11),
                bottomLeft: Radius.circular(11),
              ),
              child: Image.network(
                category.imageURL,
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(category.name, style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }

  List<Widget> createListOfCategories() {
    List<Category> categoryList = CategoryOperations.getCategories();
    List<Widget> categories =
    categoryList.map((category) => createCategory(category)).toList();
    return categories;
  }

  Widget createMusic(Music music) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 200,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                child: InkWell(
                    onTap: (){
                      _miniPlayer(music,stop:true);

                    },
                    child: Image.network(music.image, fit: BoxFit.cover))),
          ),
          Text(music.name,style : TextStyle(color: Colors.white),),
          Text(music.desc,style : TextStyle(color: Colors.white),),

        ],
      ),
    );
  }

  Widget createMusicList(String msg) {
    List<Music> musicList = MusicOperations.getMusic();
    return Padding(
      padding: const EdgeInsets.all(11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            msg,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 300,

            child: ListView.builder (
            shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return createMusic(musicList[index]);
              },
              itemCount: musicList.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget createGrid() {
    return Container(
      height: 300,
      child: GridView.count(
        childAspectRatio: 5 / 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 8,
        crossAxisCount: 2,
        children: createListOfCategories(),
      ),
    );
  }

  Widget createAppBar(DateTime time) {
    String msg;
    if (time.hour < 12)
      msg = 'Good Morning';
    else if (time.hour < 17)
      msg = 'Good Afternoon';
    else
      msg = 'Good Evening';
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(msg),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.settings),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return SingleChildScrollView(
      child: SafeArea(
          child: Container(
              child: Column(
                children: [
                  createAppBar(time),
                  SizedBox(
                    height: 5,
                  ),
                  createGrid(),
                  createMusicList('Music For You'),
                  createMusicList('Popular Playlist'),
                ],
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white60, Colors.black],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.1, 0.3])))),
    );
  }
}
