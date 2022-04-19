import 'package:flutter/material.dart';
import 'package:nature_ui/constants.dart';

class ButtonsAtBottom extends StatelessWidget {
  const ButtonsAtBottom({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: size.width/2,
          height: size.height/10,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Buy Now",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            style: TextButton.styleFrom(
                primary: kBackgroundColor,
                backgroundColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    )
                )
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Description",
              style: TextStyle(
                  fontSize: 16
              ),
            ),
            style: TextButton.styleFrom(
                primary: kTextColor,
                backgroundColor: kBackgroundColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20)
                    )
                )
            ),
          ),
        ),
      ],
    );
  }
}

