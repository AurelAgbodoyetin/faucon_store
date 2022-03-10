import 'package:flutter/material.dart';

import 'package:faucon_store/constants.dart';
import 'package:faucon_store/models/product.dart';

import '../../details/details_screen.dart';

class ItemCard extends StatelessWidget {
  final Product p;
  const ItemCard({
    Key? key,
    required this.p,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(p: p),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(p.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              // products is out demo list
              p.title,
              style: const TextStyle(
                color: kTextLightColor,
                fontSize: 18.0,
              ),
            ),
          ),
          Text(
            "\$${p.price}",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          )
        ],
      ),
    );
  }
}
