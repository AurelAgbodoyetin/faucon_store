import 'package:faucon_store/constants.dart';
import 'package:faucon_store/screens/home/home_screen.dart';
import 'package:faucon_store/services/products_service.dart';
import 'package:flutter/material.dart';

void main() {
  ProductsService().getAllProducts();
  runApp(const FauconStoreApp());
}

class FauconStoreApp extends StatelessWidget {
  const FauconStoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Faucon Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Hubballi",
        splashColor: kPrimaryColor.withOpacity(.5),
      ),
      home: const HomeScreen(),
    );
  }
}
