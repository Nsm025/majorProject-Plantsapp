import 'package:authentification/constants.dart';
import 'package:authentification/screens/home/components/featured_plant.dart';
import 'package:authentification/screens/home/components/header_with_serachbox.dart';
import 'package:authentification/screens/home/components/recommend_plants.dart';
import 'package:authentification/screens/home/components/title_with_more_bbrn.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          RecomendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
