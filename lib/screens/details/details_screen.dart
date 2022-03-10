import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:faucon_store/constants.dart';
import 'package:faucon_store/models/product.dart';
import 'package:faucon_store/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product p;
  const DetailsScreen({
    Key? key,
    required this.p,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: kPrimaryColor.withOpacity(.05),
      appBar: buildAppBar(context),
      body: Body(product: p),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      title: Text(
        p.title,
        style: const TextStyle(
          fontFamily: "Hubballi",
          color: Colors.white,
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          onPressed: () {},
        ),
        const SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }
}
