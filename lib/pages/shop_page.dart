import 'package:flutter/material.dart';
import 'package:newapp/components/my_drawer.dart';
import 'package:newapp/components/my_product%20_tile.dart';
import 'package:newapp/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          elevation: 0,
          title: const Text('Shop Page'),
        ),
        drawer: const MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ListView(
          children: [
            Center(
              child: Text(
                "Pick from a selected list of premium products",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                  itemCount: products.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(10),
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return MyProductTile(product: product);
                  }),
            ),
          ],
        ));
  }
}
