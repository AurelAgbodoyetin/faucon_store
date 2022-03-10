import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:faucon_store/models/product.dart';
import 'package:faucon_store/screens/details/components/rating_widget.dart';

import 'cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  final Product product;
  const CounterWithFavBtn({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        RatingWidget(rate: product.rate, count: product.count),
        const CartCounter(),
        Container(
          padding: const EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset("assets/icons/heart.svg"),
        )
      ],
    );
  }
}
