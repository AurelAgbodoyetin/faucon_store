import 'package:faucon_store/constants.dart';
import 'package:flutter/material.dart';

import '../../details/details_screen.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailsScreen(),
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
              child: Image.asset("assets/images/bag_3.png"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              // products is out demo list
              "Hang Top",
              style: TextStyle(
                color: kTextLightColor,
                fontSize: 18.0,
              ),
            ),
          ),
          const Text(
            "\$${45}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          )
        ],
      ),
    );
  }
}
