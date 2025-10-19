
import 'package:flutter/material.dart';
import 'package:my_grocery_app/app_drawer.dart';
import 'package:my_grocery_app/assets.dart';
import 'package:my_grocery_app/favorite.dart';
import 'package:my_grocery_app/favprovider.dart';
import 'package:my_grocery_app/provider.dart';
import 'package:my_grocery_app/cart.dart';
import 'package:provider/provider.dart';
import 'package:my_grocery_app/product.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    final fav = Provider.of<Favprovider>(context);
  

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
      body: Center(
        
        child: Container(
          color: const Color.fromARGB(255, 157, 241, 160),
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey,
                    blurRadius: 5,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 5),
                      Text('All Aisles/ ', style: TextStyle(fontSize: 30, color: Colors.grey)),
                  Text('Product', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Align(
                    alignment: AlignmentGeometry.centerRight,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.search))
                      ),
                      ),
                 
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text('All Product',style: TextStyle(color: Colors.white, fontSize: 20),),
                      style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 2, 114, 6)),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(onPressed: () {}, child: Text('A-Z' ,style: TextStyle(fontSize: 20),)),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  final item = products[index];
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
                      contentPadding: EdgeInsets.all(12),
                      
                      title: Row(
                        children: [
                           Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(item.image))),
                          ),
                          SizedBox(width: 30),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('${item.name}',style: TextStyle(fontSize: 20),),
                                Text('\$${item.price}',style: TextStyle(color: Colors.green,fontSize: 20),),
                                Text('${item.vendor}',style: TextStyle(color: Colors.lightBlue),),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {
                                 fav.addItem(
                                    Product( 
                                      image: item.image ,
                                      id: '${item.id}',
                                      name: '${item.name}',
                                      price: item.price.toDouble(),
                                      vendor: '${item.vendor}',
                                    ),
                                  );
                                },
                                icon: Icon(Icons.favorite,color: Colors.redAccent,size: 30,),
                              ),
                              IconButton(
                                onPressed: () {
                                  cart.addItem(
                                    Product( 
                                      image: item.image ,
                                      id: '${item.id}',
                                      name: '${item.name}',
                                      price: item.price.toDouble(),
                                      vendor: '${item.vendor}',
                                    ),
                                  );
                                },
                                icon: Icon(Icons.add_circle_outline, color: Colors.green,size: 30,),
                              ),
                            ],
                          ),
                        ],
                      ),
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
