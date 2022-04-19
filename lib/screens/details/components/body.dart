import 'package:flutter/material.dart';
import 'package:nature_ui/constants.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';
import 'buttons_at_bottom.dart';

class Body extends StatelessWidget {
  //const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          TitleAndPrice(title: "Samantha", country: "Ukraine", price: 440),
          SizedBox(height: kDefaultPadding*1.2),
          ButtonsAtBottom(size: size),
        ],
      ),
    );
  }
}
