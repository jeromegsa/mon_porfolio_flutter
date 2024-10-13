import 'package:flutter/material.dart';
import 'package:mon_porfolio_flutter/screens/visit_card.dart';
// import 'package:mon_porfolio_flutter/screens/details.dart';
void main ()=> runApp( MyApp());

class MyApp extends StatelessWidget{

 

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Ma première carte de visite',
      home:  VisitCard()
    );

  }
}
