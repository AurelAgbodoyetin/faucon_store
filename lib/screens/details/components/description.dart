import 'package:faucon_store/constants.dart';
import 'package:faucon_store/models/product.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        dummyText,
        style: const TextStyle(height: 1.5, fontSize: 17.0),
      ),
    );
  }
}
