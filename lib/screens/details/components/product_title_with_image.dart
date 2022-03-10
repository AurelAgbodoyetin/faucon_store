import 'package:faucon_store/constants.dart';
import 'package:flutter/material.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Nom de l'article",
            style: TextStyle(color: kTextLightColor),
          ),
          Text(
            "Hang Top",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: "Prix\n",
                      style: TextStyle(color: kTextLightColor),
                    ),
                    TextSpan(
                      text: "\$45",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: kDefaultPadding),
              Expanded(
                child: Hero(
                  tag: "3",
                  child: Image.asset(
                    "assets/images/bag_3.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
