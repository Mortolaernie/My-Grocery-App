import 'package:flutter/material.dart';
import 'package:my_grocery_app/app_drawer.dart';

class Newsstand extends StatefulWidget {
  const Newsstand({super.key});

  @override
  State<Newsstand> createState() => _NewsstandState();
}

class _NewsstandState extends State<Newsstand> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    final List<String> news = args?['news'] ?? ['No news available'];

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
      body:Container(
        color:const Color.fromARGB(255, 157, 241, 160),
        child: 
       Center(
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
                    Text('News Stand', style: TextStyle(fontSize: 25),),
                    SizedBox(width: 10,),
                    Icon(Icons.newspaper_sharp, color: Colors.deepOrange,)],),),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('< Back'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: news.length,
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
                    child: 
                  ListTile(title: Text(news[index]), onTap: () {})
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
