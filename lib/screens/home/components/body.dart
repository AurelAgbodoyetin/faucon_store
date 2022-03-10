import 'package:faucon_store/constants.dart';
import 'package:faucon_store/screens/home/components/categories.dart';
import 'package:faucon_store/screens/home/components/item_card.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding / 2,
            ),
            child: GridView.builder(
              itemCount: 5,
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => const ItemCard(),
            ),
          ),
        ),
      ],
    );
  }
}
