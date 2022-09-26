import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube_tutorial_plant_app_ui/constants.dart';

import 'featured_plants.dart';
import 'header_with_searchbox.dart';
import 'recomend_plants.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", ),
          RecomendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", ),
          FeaturedPlatns(),
          SizedBox(height: kDefaultPadding,),
        ],
      ),
    );
  }
}





