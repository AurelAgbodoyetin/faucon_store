import 'package:flutter/material.dart';

import 'package:faucon_store/constants.dart';

class Description extends StatelessWidget {
  final String desc;
  const Description({
    Key? key,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        desc,
        style: const TextStyle(height: 1.5, fontSize: 17.0),
      ),
    );
  }
}
