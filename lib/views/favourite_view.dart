import 'package:flutter/material.dart';

class Favourite_View extends StatelessWidget {
  List<Map> fav;
  Favourite_View({super.key, required this.fav});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite"),
      ),
      body: ListView.builder(
        itemCount: fav.length,
        itemBuilder: (context, index) {
        return ListTile(
          title: Text(fav[index]['name']),
        );
      }),
    );
  }
}
