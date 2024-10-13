import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff052555),
      appBar: AppBar(
        title: const Text('En savoir plus'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: const Center(
          child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage("assets/tof_profile.jpeg"),
            ),
            SizedBox(height: 20.0,width: 20.0,),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                color: Colors.transparent,
                child: Text(
                  "Je travaille dure pour être très bon parce-que je veux avoir ce super pouvoir de pouvoir créer des applications et donc apporté des solutions à long terme ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontSize: 30.0,
                      height: 1.5,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
