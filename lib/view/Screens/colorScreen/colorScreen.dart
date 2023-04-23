import 'package:flutter/material.dart';
import 'package:germanApp/model/itemModel.dart';
import 'package:germanApp/shared/item.dart';
class ColorScreen extends StatelessWidget {
  List <Model> colors=[
    Model('assets/images/colors/black.png', 'Schwarz', 'black','black.mp3'),
    Model('assets/images/colors/brown.png', 'Braun', 'brown','brown.mp3'),
    Model('assets/images/colors/gray.png', 'Grau', 'grey','gray.mp3'),
    Model('assets/images/colors/green.png', 'Grün', 'green','green.mp3'),
    Model('assets/images/colors/red.png', 'Rot', 'red','red.mp3'),
    Model('assets/images/colors/white (1).png', 'Weiß', 'white','white.mp3'),
    Model('assets/images/colors/Yellow.png', 'Gelb', 'yellow','yellow.mp3'),
    Model('assets/images/colors/blue.png', 'Blau', 'blue','blue.mp3'),
    Model('assets/images/colors/orange.png', 'Orange', 'orange','orange.mp3'),
    Model('assets/images/colors/pink.png', 'Rosa', 'pink','Pink .mp3'),
    Model('assets/images/colors/Purple.png', 'Lila', 'purple','purple.mp3'),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff37306B),title: Text('Colors'),),
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return  Item(colors[index],'colors',Color(0xffD27685)) ;
        },

      ),
    );
  }
}