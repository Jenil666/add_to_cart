import 'package:add_to_cart/Screen/home/provider/product_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  product_provider? p1;
  @override
  Widget build(BuildContext context) {
    p1 = Provider.of<product_provider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("HomeScreen"),
          centerTitle: true,
          backgroundColor:
          Colors.red,
        ),
        body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'product',arguments: p1!.productModel[index]);
            },
            child: Container(
              margin: EdgeInsets.all(10),
              color: Colors.red.shade100,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${p1!.productModel[index].image}",style: TextStyle(fontSize: 50),),
                  SizedBox(height: 20,),
                  Text("${p1!.productModel[index].name}",style: TextStyle(fontSize: 20),),
                  SizedBox(height: 10,),
                  Text("${p1!.productModel[index].price}",style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
          );
        },itemCount: p1!.productModel.length,),
      ),
    );
  }
}
