import 'package:flutter/material.dart';
import 'package:nature_ui/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'image_and_icons.dart';

class Body extends StatelessWidget {
  //const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
        ],
      ),
    );
  }
}
