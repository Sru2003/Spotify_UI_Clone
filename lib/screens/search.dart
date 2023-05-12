import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children:[
      AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Search',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 29,color: Colors.white)),
    ),
       Padding(
         padding: const EdgeInsets.all(11.0),

         child: TextField(

            decoration:InputDecoration(
              hintText:'What do you want to listen to?',
              prefixIcon: Icon(Icons.search,),
              prefixIconColor: Colors.grey,
              filled: true,
              fillColor: Colors.white,
            )
          ),
       ),

    ]
    );
  }
}
