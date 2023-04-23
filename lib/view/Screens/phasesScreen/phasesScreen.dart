import 'package:flutter/material.dart';
import 'package:germanApp/model/itemModel.dart';
import 'package:germanApp/shared/phrasesitem.dart';
class PhrasesScreen extends StatelessWidget {
  List <Model> phrases=[
    Model('', 'Herzlich WillKommen', 'Welcome','welcome.mp3'),
    Model('', 'Peter und Marta sind aus Berlin', 'Peter und Marta are from Berlin','peter and marta are from berlin.mp3'),
    Model('', 'Ich lese ein wort', 'I read a word','I read a word.mp3'),
    Model('', 'Es ist zehn uhr', "It's 10 o'clock","it's 10 o'clock.mp3"),
    Model('', 'Peter ist der freund von marta', "Peter is Marta's boyfriend","Peter is Marta's boyfriend.mp3"),
    Model('', 'ich trinke tea', 'I drink tea','i drink tea.mp3'),
    Model('', 'sie hören gern Musik', 'they like listening to music','they like listening to music.mp3'),
    Model('', ' Der Himmel ist blau ', ' The sky is blue ','The sky is blue.mp3'),
    Model('', ' Er ist ausländer ', " He's a foreigner","He's a foreigner.mp3"),
    Model('', ' Das gras ist grün', ' the grass is green ','the grass is green.mp3'),
    Model('', ' Die erde ist braun ', ' the earth is brown ','The earth is brown.mp3'),
    Model('', ' Die wolke  ist grau ', ' The cloud is grey ','The cloud is grey.mp3'),
    Model('', ' Die Sonne ist gelb ', ' the sun is yellow ','the sun is yellow.mp3'),
    Model('', ' Wie viel uhr ist es, bitte ? ', ' What time is it, please ? ','What time is it, please.mp3'),
    Model('', 'Der schnee ist weiß  ', ' the snow is white ','the snow is white.mp3'),
    Model('', ' Ich schreibe einen Satz ', ' I write a sentence ','i write a sentence.mp3'),
    Model('', ' Oma gießt die blumen ', ' Grandma waters the flowers ','Grandma waters the flowers.mp3'),
    Model('', ' ich danke meinen vater ', ' I thank my father ','I thank my father.mp3'),
    Model('', ' Er spricht Deutsch ', ' He is speaking german ','he is speaking german.mp3'),



  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff37306B),title: Text('Phrases'),),
      body: ListView.builder(
        itemCount: 19,
        itemBuilder: (BuildContext context, int index) {
          return PhrasesItem(phrases[index], 'phrases', Color(0xff66347F));
            // Item(phrases[index],'phrases',Color(0xff66347F)) ;
        },

      ),
    );
  }
}