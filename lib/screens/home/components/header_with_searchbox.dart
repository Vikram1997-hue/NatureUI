import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nature_ui/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
    @required this.myColor,
  }) : super(key: key);

  final Size size;
  final Color myColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: size.height*0.07),
      height: size.height*0.2,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(size.width*0.05, 0, size.width*0.05, size.height*0.07),
            height: size.height*0.2 - 27,
            decoration: BoxDecoration(
              color: myColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(34),
                bottomRight: Radius.circular(34),
              ),
            ),
            child: Row(
              children: [
                Text(
                  "Hi NatureUI!",
                  style: Theme.of(context).textTheme.headline5.copyWith(
                    color: kBackgroundColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Image.asset("assets/images/logo.png"),
              ],
            ),
          ),


          Positioned(
            bottom: 0,
            left:0,
            right:0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: size.width*0.05), //0.09
              padding: EdgeInsets.symmetric(horizontal: size.width*0.05), //0.09
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 50,
                      color: myColor.withOpacity(0.29),
                    )
                  ]
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: myColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
