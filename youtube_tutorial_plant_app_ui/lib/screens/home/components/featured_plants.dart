import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedPlatns extends StatelessWidget {
  const FeaturedPlatns({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(image: "assets/images/bottom_img_1.png",),
          FeaturePlantCard(image: "assets/images/bottom_img_2.png",),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key? key,
    required this.image
  }) : super(key: key);

  final image;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding / 2,
      ),
      width: size.width * 0.8,
      height: 185,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
          )
      ),
    );
  }
}
