import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:germanApp/model/itemModel.dart';
class PhrasesItem extends StatefulWidget {
  final Model item;
  final String?itemType;
  final Color color;

  const PhrasesItem( this.item,this.itemType,this.color);

  @override
  State<PhrasesItem> createState() => _PhrasesItemState();
}

class _PhrasesItemState extends State<PhrasesItem> {
  bool isClicked=false;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 100,
      color: widget.color.withOpacity(.9),
      child: Row(
        children: [
          SizedBox(width: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.item.germanText!,style: TextStyle(color: Colors.white,fontSize: 21),),
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
              icon: isClicked==false?Icon(Icons.play_circle,size: 25,color: Colors.white,):Icon(Icons.pause_circle,size: 25,color: Colors.white,)
          )
        ],
      ),
    );
  }
}
