import 'package:faucon_store/constants.dart';
import 'package:faucon_store/screens/details/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: kPrimaryColor.withOpacity(.05),
      appBar: buildAppBar(context),
      body: const Body(),
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
      title: const Text(
        "Hang Top",
        style: TextStyle(
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
