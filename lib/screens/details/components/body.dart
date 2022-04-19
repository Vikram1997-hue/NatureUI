import 'package:flutter/material.dart';
import 'package:nature_ui/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

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
          Row(
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
          ),
        ],
      ),
    );
  }
}

