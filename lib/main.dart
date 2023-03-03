import 'package:add_to_cart/Screen/home/provider/product_provider.dart';
import 'package:add_to_cart/Screen/home/view/home_screen.dart';
import 'package:add_to_cart/Screen/product/view/product_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => product_provider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => HomeScreen(),
          'product':(context) => ProductScreen(),
        },
      ),
    ),
  );
}
