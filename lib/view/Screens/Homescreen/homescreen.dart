import 'package:flutter/material.dart';
import 'package:germanApp/view/Screens/FamilyScreen/familyScreen.dart';
import 'package:germanApp/view/Screens/NumbersScreen/NumbersScreen.dart';
import 'package:germanApp/view/Screens/colorScreen/colorScreen.dart';
import 'package:germanApp/view/Screens/phasesScreen/phasesScreen.dart';
class HomeScreen extends StatelessWidget {

List <Color> colorscategories=[
  Color(0xff09B1CC),
  Color(0xff09CA49),
  Color(0xffD27685),
  Color(0xff66347F),];
List <String>categoriesName=[
  'Numbers',
  'Family Members',
  'Colors',
  'Phrases'
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 65,
        backgroundColor: Color(0xff37306B),
        title: Text('Lernen App',
          style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold, ),),),
      backgroundColor: Colors.brown.shade50,
              body: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/categories/homePage.png')
                  )
                ),
                padding: EdgeInsets.symmetric(vertical: 50),
                height: double.infinity,
                child: ListView.builder(
      itemCount: 4,
      itemBuilder: (context,index){

    return GestureDetector(
      onTap: (){
        index==0?Navigator.push(context, MaterialPageRoute(builder: (context)=>NumbersScreen()))
            :index==1?Navigator.push(context, MaterialPageRoute(builder: (context)=>FamilyScreen()))
            :index==2?Navigator.push(context, MaterialPageRoute(builder: (context)=>ColorScreen()))
            :Navigator.push(context, MaterialPageRoute(builder: (context)=>PhrasesScreen()));
      },
      child: Container(
        alignment: Alignment.center,
        height: 100,
        margin: EdgeInsets.all(8),
decoration: BoxDecoration(
  color:colorscategories[index],
  borderRadius: BorderRadius.circular(20)
),
        child: Text(categoriesName[index],style: TextStyle(color: Colors.white,fontSize: 25),),
      ),
    );

  }),
              ),



      // body: MasonryGridView.builder(gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
      //   crossAxisCount: 3
      // ), itemBuilder: (context,index){
      //   return Padding(
      //       padding:EdgeInsets.all(8) ,
      //   child: Image.asset('assets/images/colors/color_black.png'),
      //   );
      // }
      // ),
    );
  }
}
