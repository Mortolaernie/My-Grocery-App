import 'package:flutter/material.dart';
import 'package:my_grocery_app/app_drawer.dart';
import 'package:provider/provider.dart';
import 'package:my_grocery_app/provider.dart';
import 'package:my_grocery_app/product.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  Widget itemBuilder(BuildContext context, int index) {
    return ListTile(title: Text('Item $index'));
  }

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final products = Provider.of<CartProvider>(context).items;
    final cart = products.values.toList();
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('My Grocery App' , style: TextStyle(fontSize: 30, color: Colors.green),),),
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
                    Text('Basket', style: TextStyle(fontSize: 25),),
                    SizedBox(width: 10,),
                    Icon(Icons.shopping_basket, color: Colors.deepOrange,)],),),
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
                itemCount: cart.length,
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
                          child: cart[index].product.image.isNotEmpty
                              ? Image.asset(
                                  cart[index].product.image,
                                  fit: BoxFit.contain,
                                  errorBuilder: (context, error, stackTrace) =>
                                      Icon(Icons.broken_image),
                                )
                              : Icon(Icons.image),
                        ),
                        Text(cart[index].product.name ?? ''),
                        Text(
                          '\$ ${cart[index].product.price?.toStringAsFixed(2) ?? '0.00'}',
                        ),
                        IconButton(
                          onPressed: () {
                            cartProvider.removeItem(cart[index].product.id!);
                          },
                          icon: Icon(Icons.remove, color: Colors.redAccent,size: 25,),
                        ),
                      ],
                    ),
                    onTap: () {},
                    ),
                  );
                },
              ),
            ),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total', style: TextStyle(fontSize: 20)),
                  Text(
                    '\$ ${cartProvider.totalAmount.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 20),
                  ),
                  ElevatedButton(onPressed: (){}, child: Text('Check Out',style: TextStyle(fontSize: 20, color: Colors.white),),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),),
                ],
              ),
              
            ),
          ],
        ),
      ),
    ),
    );
  }
}
