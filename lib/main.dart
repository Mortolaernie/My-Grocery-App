import 'package:flutter/material.dart';
import 'package:my_grocery_app/app_drawer.dart';
import 'package:my_grocery_app/cart.dart';
import 'package:my_grocery_app/favorite.dart';
import 'package:my_grocery_app/favprovider.dart';
import 'package:my_grocery_app/info.dart';
import 'package:my_grocery_app/newsstand.dart';
import 'package:my_grocery_app/product.dart';
import 'package:my_grocery_app/profile.dart';
import 'package:my_grocery_app/shop.dart';
import 'package:my_grocery_app/provider.dart';
import 'package:provider/provider.dart';
import 'package:my_grocery_app/assets.dart';


void main() {
  runApp(
    MultiProvider(providers:[
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
    ),
    ChangeNotifierProvider(
      create:(context) => Favprovider()),
    ],
      child: const MyApp(),
  ),
    
  );
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/shop': (context) => const Shop(),
        '/newsstand': (context) => const Newsstand(),
        '/info': (context) => const Info(),
        '/cart': (context) => const Cart(),
        '/profile': (context) => const Profile(),
        '/main': (context) => const MyApp(),
        '/favorite': (context) => const Favorite()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(title: Text('<<<----- CLICK HERE TO START SHOPPING', style: TextStyle(fontSize: 20,color: Colors.white)),
      backgroundColor: Colors.lightGreen),
      drawer: AppDrawer(),
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://thumbs.dreamstime.com/b/seamless-pattern-minimalistic-vegetables-icon-simple-illustrations-green-fresh-wrap-background-fabric-195257092.jpg'),
        fit: BoxFit.cover),),
       child: Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Stack(
                children: [
                  Text(
                'Welcome To My Grocery App',
                style: TextStyle(
                  foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 6
                  ..color = Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                  ),
                  Text(
                'Welcome To My Grocery App',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 1, 85, 4),
                ),
                  ),
                ],
              )
             
            ),
          ],
        ),
      ),
      ),
    );
  }
}
