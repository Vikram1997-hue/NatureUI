import 'package:flutter/material.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key key,
    @required this.size,
    @required this.myColor, this.title, this.press,
  }) : super(key: key);

  final Size size;
  final Color myColor;
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width*0.045),
      child: Row(
        children: [
          TitleWithCustomUnderline(myColor: myColor, text: title),
          Spacer(),
          TextButton(
            style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: myColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                )
            ),
            onPressed: press,
            child: Text("More"),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key,
    @required this.myColor, this.text,
  }) : super(key: key);

  final Color myColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: 4.0),
              color: myColor.withOpacity(0.2),
              height: 7,
            ),
          ),
        ],
      ),
    );
  }
}

