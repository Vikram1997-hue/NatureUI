import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'header_with_searchbox.dart';
import 'title_with_more_btn.dart';
import 'entire_recommended_section.dart';
import 'all_featured_plants.dart';
import 'package:nature_ui/constants.dart';


class Body extends StatelessWidget {
  //const Body({Key? key}) : super(key: key);

  static const myColor = const Color(0xFF098d5d);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //SingleChildScrollView enables scrolling on smaller devices
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size, myColor: myColor),
          TitleWithMoreBtn(size: size, myColor: myColor, title: "Recommended", press: () {}),
          EntireRecommendedSection(),
          TitleWithMoreBtn(size: size, myColor: myColor, title: "Featured Plants", press: () {}),
          AllFeaturedPlants(),
          SizedBox(height: kDefaultPadding),

        ],
      ),
    );
  }
}
