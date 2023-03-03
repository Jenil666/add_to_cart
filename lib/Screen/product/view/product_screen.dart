import 'package:add_to_cart/Screen/home/model/product_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home/provider/product_provider.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    product_model p1 = ModalRoute.of(context)!.settings.arguments as product_model;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Product"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              child: Text("${p1.image}",style: TextStyle(fontSize: 100),),
            ),
            SizedBox(height: 20,),
            Align(
              child: Text("${p1.name}",style: TextStyle(fontSize: 20),),
            ),
            SizedBox(height: 5,),
            Align(
              child: Text("${p1.price}"),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              product_model jenil = product_model(price: p1.price,image: p1.image,quantity: p1.quantity,name: p1.name);
              Provider.of<product_provider>(context,listen: false).addtocart(jenil);
            }, child: Text("Add to cart",),style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade900),),
          ],
        ),
      ),
    );
  }
}
