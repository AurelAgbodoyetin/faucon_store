import 'package:flutter/material.dart';

import 'package:faucon_store/constants.dart';

class RatingWidget extends StatelessWidget {
  final int count;
  final double rate;
  const RatingWidget({
    Key? key,
    required this.count,
    required this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Text(
              "$rate",
              //rate.toString(),
              style: const TextStyle(
                color: kTextColor,
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "$count votes",
              style: const TextStyle(
                color: kTextLightColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
