import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:germanApp/model/itemModel.dart';
class Item extends StatefulWidget {
 final Model item;
 final String?itemType;
 final Color color;

const Item( this.item,this.itemType,this.color);

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  bool isClicked=false;

  @override
  Widget build(BuildContext context) {

    return Container(
    height: 100,
    color: widget.color.withOpacity(.9),
    child: Row(
    children: [
    Container(
    height: 100,
    width: 100,
    color: Colors.yellow.shade50.withOpacity(.9),
    child: Image.asset(widget.item.image!),
    ),
    SizedBox(width: 10,),
    Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
         Text(widget.item.germanText!,style: TextStyle(color: Colors.white,fontSize: 23),),
     Text(widget.item.englishText!,style:  TextStyle(color: Colors.white,fontSize: 19),)
],
        ),
              Spacer(flex: 1,),
                IconButton(onPressed: (){

                 AudioCache player=AudioCache(prefix: 'assets/sounds/${widget.itemType}/');
                 isClicked=!isClicked;
                isClicked==true? player.play(widget.item.sound!):false;
                 setState(() {
                 });
                },
                    icon: isClicked==false?Icon(Icons.play_circle,size: 30,color: Colors.white,):Icon(Icons.pause_circle,size: 30,color: Colors.white,)
                )
],
),
);
  }
}
