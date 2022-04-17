import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding*2,
        right: kDefaultPadding*2,
      ),
      height: size.height*0.09,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(
          offset: Offset(0,-10),
          blurRadius: 35,
          color: kPrimaryColor.withOpacity(0.38),
        )],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              icon: SvgPicture.asset("assets/icons/flower.svg"),
              onPressed: () {}
          ),
          IconButton(
              icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
              onPressed: () {}
          ),
          IconButton(
              icon: SvgPicture.asset("assets/icons/user-icon.svg"),
              onPressed: () {}
          ),
        ],
      ),
    );
  }
}
