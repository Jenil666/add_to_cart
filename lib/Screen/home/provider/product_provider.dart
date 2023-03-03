import 'package:add_to_cart/Screen/home/model/product_mode.dart';
import 'package:flutter/foundation.dart';

class product_provider extends ChangeNotifier
{
  List<product_model> productModel = [
    product_model(name: "Kiwi",price: "150",quantity: 1,image: "🥝"),
    product_model(name: "Strabwrry",price: "180",quantity: 1,image: "🍓"),
    product_model(name: "Mango",price: "350",quantity: 1 ,image: "🥭"),
    product_model(name: "Pineapple",price: "80",quantity: 1,image:"🍍" ),
    product_model(name: "Tangerine",price: "70",quantity: 1,image: "🍊"),
    product_model(name: "Lemon",price: "50",quantity: 1,image: "🍋"),
    product_model(name: "Melon",price: "120",quantity: 1,image: "🍈"),
    product_model(name: "Peach",price: "130",quantity: 1,image: "🍑"),
    product_model(name: "Grapes",price: "60",quantity: 1,image: "🍇 "),
    product_model(name: "Banana",price: "40",quantity: 1,image:"🍌"),
  ];
  List<product_model> Cart = [];

  void addtocart(product_model p1)
  {
    Cart.add(p1);
  }
}