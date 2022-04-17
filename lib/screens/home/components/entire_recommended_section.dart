import 'package:flutter/material.dart';
import 'package:nature_ui/constants.dart';

class EntireRecommendedSection extends StatelessWidget {
  const EntireRecommendedSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedSectionTemplate(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Ukraine",
            press: () {},
            price: 440,
          ),
          RecommendedSectionTemplate(
            image: "assets/images/image_2.png",
            title: "Hydrangea",
            country: "USA",
            press: () {},
            price: 540,
          ),
          RecommendedSectionTemplate(
            image: "assets/images/image_3.png",
            title: "Pansies",
            country: "India",
            press: () {},
            price: 300,
          ),
        ],
      ),
    );
  }
}

class RecommendedSectionTemplate extends StatelessWidget {
  const RecommendedSectionTemplate({
    Key key,
    @required this.image,
    @required this.title,
    @required this.country,
    @required this.price,
    @required this.press,
  }) : super(key: key);

  final Color myColor = kPrimaryColor;
  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left:kDefaultPadding, top:kDefaultPadding/2, bottom:kDefaultPadding*2.5),
      width: size.width*0.4, //it will cover 40% of the device's screen
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: myColor.withOpacity(0.23)
                )],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),

                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Spacer(),
                  Text("\$$price", style: Theme.of(context).textTheme.button.copyWith(color: kPrimaryColor),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

