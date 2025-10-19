import 'package:flutter/material.dart';
import 'package:my_grocery_app/app_drawer.dart';
import 'package:my_grocery_app/favprovider.dart';
import 'package:provider/provider.dart';
import 'package:my_grocery_app/provider.dart';
import 'package:my_grocery_app/product.dart';
import 'package:my_grocery_app/favprovider.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
   Widget itemBuilder(BuildContext context, int index) {
    return ListTile(title: Text('Item $index'));
  }

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final products = Provider.of<CartProvider>(context).items;
    final cart = products.values.toList();
    final favoriteprovider = Provider.of<Favprovider>(context);
    final product = Provider.of<Favprovider>(context).items;
    final favorite = product.values.toList();
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('My Grocery App', style: TextStyle(fontSize: 30,color: Colors.green ),),
        ),
        actions: [
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/cart');
          }, icon: Icon(Icons.add_shopping_cart)),
        ],
        backgroundColor: Colors.white,
      ),
      drawer: AppDrawer(),
      body: Container(
        color: const Color.fromARGB(255, 157, 241, 160),
      child: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  Expanded(child: Row(children: [
                    Text('Favorite', style: TextStyle(fontSize: 25),),
                    SizedBox(width: 10,),
                    Icon(Icons.favorite_border, color: Colors.deepOrange,)],),),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('< Back'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
            
              child: ListView.builder(
                itemCount: favorite.length,
                itemBuilder: (context, index) {
                  return Container(
                     margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.blueGrey,
                          spreadRadius: 0.5,
                        ),
                      ],
                    ),
                    child: ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: favorite[index].product.image.isNotEmpty
                              ? Image.asset(
                                  favorite[index].product.image,
                                  fit: BoxFit.contain,
                                  errorBuilder: (context, error, stackTrace) =>
                                      Icon(Icons.broken_image),
                                )
                              : Icon(Icons.image),
                        ),
                        Text(favorite[index].product.name ?? ''),
                        Text(
                          '\$ ${favorite[index].product.price?.toStringAsFixed(2) ?? '0.00'}',
                        ),
                        ElevatedButton(
                          onPressed: () {
                            final item = favorite[index].product;
                            cartProvider.addItem(
                              Product(
                                image: item.image,
                                id: '${item.id}',
                                name: '${item.name}',
                                price: item.price?.toDouble() ?? 0.0,
                                vendor: '${item.vendor}',
                              ),
                              
                            );
                            favoriteprovider.removeItem(favorite[index].product.id!);
                          },
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                          child: Text('Add To Cart', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                        ),
                      ],
                    ),
                    onTap: () {},
                    ),
                  );
                },
              ),
            ),
            
          ],
        ),
      ),
    ),
    );
  }
}