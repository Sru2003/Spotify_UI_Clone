import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children:[
      AppBar(
      title: Text('Search',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 29,color: Colors.white)),
    ),
       TextField(
          decoration:InputDecoration(
            labelText:'What do you want to listen to?',
            icon: Icon(Icons.search),
          )
        ),

    ]
    );
  }
}
