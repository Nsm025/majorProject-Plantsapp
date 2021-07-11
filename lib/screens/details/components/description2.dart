import 'package:authentification/constants.dart';
import 'package:authentification/screens/details/detail_screen.dart';
import 'package:flutter/material.dart';

class Description2 extends StatefulWidget {
  @override
  _Description2State createState() => _Description2State();
}

class _Description2State extends State<Description2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 35.0),
            Container(
              height: 400,
              child: Image(
                image: AssetImage("assets/images/image_3.png"),
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 20),
            RichText(
                text: TextSpan(
                    text: 'Plant Name- ',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                    children: <TextSpan>[
                  TextSpan(
                      text: 'Peace Lily',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black))
                ])),
            SizedBox(height: 10.0),
            Text(
              'Spathiphyllum is a genus of about 47 species of monocotyledonous flowering plants in the family Araceae,',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'native to tropical regions of the Americas and southeastern Asia.',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Certain species of Spathiphyllum are commonly known as spath or peace lilies.',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 30.0),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: kPrimaryColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ),
                );
              },
              child: Text(
                "Back",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
