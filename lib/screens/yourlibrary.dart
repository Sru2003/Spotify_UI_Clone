import 'package:flutter/material.dart';

class YourLibrary extends StatelessWidget {
  const YourLibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children:[
      AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Your Library',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 29,color: Colors.white)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.search),
          )
        ],
      ),


    ]
    );
  }
}
