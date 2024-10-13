import 'package:flutter/material.dart';
import 'package:mon_porfolio_flutter/screens/details.dart';
class VisitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff052555),
      appBar: AppBar(
        title: const Text('Ma carte de visite  '),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage('assets/tof_profile.jpeg'),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Card(
              margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Jérôme GBOSSA",
                  style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontSize: 30.0,
                      height: 1.5,
                      color: Colors.white),
                ),
              ),
            ),
            const Card(
              margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Développeur web fullstack chez Hypérion, Créateur de AzéApp 🦉",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontSize: 30.0,
                      height: 1.5,
                      color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (BuildContext context)=>
                  Details()
                ));
              },
              
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              fixedSize: const Size(250.0, 70.0),
                padding: const EdgeInsets.all(8.0)
                
              ),
              child: const Text(
                'En savoir plus',
                style: TextStyle(
                    fontFamily: 'JosefinSans',
                    fontSize: 20.0,
                    color: Colors.white70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
