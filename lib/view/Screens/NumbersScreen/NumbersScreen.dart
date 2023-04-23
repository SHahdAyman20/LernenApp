import 'package:flutter/material.dart';
import 'package:germanApp/model/itemModel.dart';
import 'package:germanApp/shared/item.dart';

class NumbersScreen extends StatelessWidget {
 List <Model> numbers=[
   Model('assets/images/numbers/one.png', 'Eins', 'one','1.mp3'),
   Model('assets/images/numbers/two.png', 'Zwei', 'two','2.mp3'),
   Model('assets/images/numbers/three.png', 'Drei', 'three','3.mp3'),
   Model('assets/images/numbers/four.png', 'Vier', 'four','4.mp3'),
   Model('assets/images/numbers/five.png', 'Fünf', 'five','5.mp3'),
   Model('assets/images/numbers/six.png', 'Sechs', 'six','6.mp3'),
   Model('assets/images/numbers/seven.png', 'Sieben', 'seven','7.mp3'),
   Model('assets/images/numbers/eight.png', 'Acht', 'eight','8.mp3'),
   Model('assets/images/numbers/nine.png', 'Neun', 'nine','9.mp3'),
   Model('assets/images/numbers/ten.png', 'Zehn', 'ten','10.mp3')
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff37306B),title: Text('Numbers'),),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return  Item(numbers[index],'numbers',Color(0xff09B1CC)) ;
        },

      ),
    );
  }
}
