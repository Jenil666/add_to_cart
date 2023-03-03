import 'package:add_to_cart/Screen/home/model/product_mode.dart';
import 'package:add_to_cart/Screen/home/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  product_provider? p1;

  @override
  Widget build(BuildContext context) {
    p1 = Provider.of<product_provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Cart Screen"),
          ),
          body: Consumer<product_provider>(
            builder: (context, value, child) => ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(
                    "${p1!.Cart[index].image}",
                    style: TextStyle(fontSize: 25),
                  ),
                  title: Text("${p1!.Cart[index].name}"),
                  subtitle: Text("${p1!.Cart[index].price}"),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      IconButton(
                        onPressed: () {
                          product_model mp1 = product_model(
                              name: p1!.Cart[index].name,
                              quantity: p1!.Cart[index].quantity! - 1,
                              image: p1!.Cart[index].image,
                              price: p1!.Cart[index].price);
                          p1!.increment_decrement(index, mp1);
                        },
                        icon: Icon(
                          Icons.remove,
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "${p1!.Cart[index].quantity}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () {
                          product_model mp1 = product_model(
                              name: p1!.Cart[index].name,
                              quantity: p1!.Cart[index].quantity! + 1,
                              image: p1!.Cart[index].image,
                              price: p1!.Cart[index].price);
                          p1!.increment_decrement(index, mp1);
                        },
                        icon: Icon(
                          Icons.add,
                          size: 18,
                        ),
                      )
                    ],
                  ),
                );
              },
              itemCount: p1!.Cart.length,
            ),
          )),
    );
  }
}
