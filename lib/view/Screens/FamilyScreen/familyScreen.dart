import 'package:flutter/material.dart';
import 'package:germanApp/model/itemModel.dart';
import 'package:germanApp/shared/item.dart';
class FamilyScreen extends StatelessWidget {
  List <Model> family=[
    Model('assets/images/family_members/family_grandfather.png', 'Der Großvater', 'GrandFather','grandpa .mp3'),
    Model('assets/images/family_members/family_grandmother.png', 'Die Großmutter', 'GrandMother','grandma​.mp3'),
    Model('assets/images/family_members/family_father.png', 'Der Vater', 'Father','father​.mp3'),
    Model('assets/images/family_members/family_mother.png', 'Die Mutter', 'Mother','mother​.mp3'),

    Model('assets/images/family_members/family_older_brother.png', 'Der Onkel', 'Uncle','uncle.mp3'),
    Model('assets/images/family_members/family_daughter.png', 'Die Tante', 'Aunt','aunt​.mp3'),

    Model('assets/images/family_members/family_son.png', 'Der Bruder', 'Brother','brother .mp3'),
    Model('assets/images/family_members/family_older_sister.png','Die Schwester', 'Sister' ,'sister.mp3'),

    Model('assets/images/family_members/family_younger_brother.png', 'Der Sohn', 'Son','son​.mp3'),
    Model('assets/images/family_members/family_younger_sister.png', 'Die Tochter', 'Daughter','daughter​.mp3'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff37306B),title: Text('Family Members'),),
      body: ListView.builder(
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          return  Item(family[index],'family_members',Color(0xff09CA49)) ;
        },

      ),
    );
  }
}