import 'package:flutter/material.dart';
import 'package:nature_ui/constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key, this.title, this.country, this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: country,
                  style: TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins-Light',
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Text("\$$price", style: Theme.of(context).textTheme.headline5.copyWith(
            color: kPrimaryColor,
          ),),
        ],
      ),
    );
  }
}
