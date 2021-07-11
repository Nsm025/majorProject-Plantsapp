import 'package:authentification/constants.dart';
import 'package:authentification/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class HeartPage extends StatefulWidget {
  @override
  _HeartPageState createState() => _HeartPageState();
}

class _HeartPageState extends State<HeartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 35.0),
              RichText(
                  text: TextSpan(
                      text: 'Important ',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                      children: <TextSpan>[
                    TextSpan(
                        text: 'Information',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))
                  ])),
              Container(
                height: 400,
                child: Image(
                  image: NetworkImage(
                      "https://www.inoxpa.in/uploads/actualitat/India/xINOXPA,P20plant,P20a,P20tree.jpg.pagespeed.ic.gK_uEwuXWv.jpg"),
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'There are around 400,000 plants species recorded in the world and many more waiting to be discovered and named.  Yet although the threat to the existence of many wild animals is now widely recognized, not many people are aware that plants are also in danger.',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                ' In February 2015, the Center for Biological Diversity stated "Of the more than 300,000 known species of plants, the IUCN has evaluated only 12,914 species, finding that about 68% of evaluated plant species are threatened with extinction."',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Large areas of desert around the world bear testimony to people’s destruction of vegetation. Most of the Middle East is now desert or is being rehabilitated at great expense. Many bare and eroded lands around the Mediterranean once supported forests.',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'In many parts of Africa and India cattle and goats wander the stony plains eating up any scrap of green that manages to appear on what were once good pastures. Overgrazing by domestic and feral stock is, in fact, the greatest menace to plants, although ‘raids’ by botanists and other enthusiasts on some beautiful plants have sometimes exacted a serious toll on rare species.',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Perhaps people forget that all our domestic crops and garden flowers spring from wild stock. Just as important is the fact that plants provide a high proportion of medicines in modern use. Who knows what secrets of value to mankind are still locked away among plants awaiting discovery.  Tropical rainforests are where a quarter of the active ingredients in modern medicines were first discovered.  Yet they are the most threatened habitat in the world containing 63% of the world’s threatened plant species.  ',
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
                      builder: (context) => HomeScreen(),
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
      ),
    );
  }
}
