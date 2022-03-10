import 'package:faucon_store/constants.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: const [
            Text(
              "4.1",
              style: TextStyle(
                color: kTextColor,
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "245 votes",
              style: TextStyle(
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
