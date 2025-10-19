import 'package:flutter/material.dart';
import 'package:my_grocery_app/app_drawer.dart';
import 'package:my_grocery_app/product.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
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
      body: 
      Container(
        color: const Color.fromARGB(255, 157, 241, 160),
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
                  Icon(Icons.question_answer_outlined, size: 30,),
                  Expanded(child: Text('Who we are ?', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('< Back'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index){
            return
                Container(margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.blueGrey,
                          spreadRadius: 0.5,
                        ),
                      ],
                    ),
                 child: 
                 Column(
                  children: [
                    Column(
                      children: [
                    Text('1.) Friendly & Simple',
                style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                    Text('At My Grocery App, we’re here to make your shopping easier. ',
                    style: TextStyle(fontSize: 18, color: Colors.black),),

                    Text('Whether you\'re stocking up for the week or just grabbing a few essentials, ',
                    style: TextStyle(fontSize: 18, color: Colors.black),),
                    
                    Text('our app helps you find what you need quickly, save money, and shop from the comfort of your home.',
                    style: TextStyle(fontSize: 18, color: Colors.black),),
                    SizedBox(height: 10,),
                    Text('We’re all about convenience, quality, and bringing your favorite groceries right to your fingertips.',
                    style: TextStyle(fontSize: 18, color: Colors.black),),
                      ],
                  ), 
                  SizedBox(height: 20,),
                    Column(
                      children: [
                         Text('2.) Modern & Tech-Savvy',
                style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                    Text('We’re a tech-driven grocery solution designed for the modern shopper. My Grocery App combines smart features, real-time updates, and a seamless shopping experience to help you save time and stress less.',
                    style: TextStyle(fontSize: 18, color: Colors.black),),
                    SizedBox(height: 10,),
                    Text('From pantry planning to doorstep delivery, we’re reimagining how groceries fit into your life.',
                    style: TextStyle(fontSize: 18, color: Colors.black),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        Text('3.) Customer-Focused',
                style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                    Text('We built My Grocery App with one goal in mind: you.',
                    style: TextStyle(fontSize: 18, color: Colors.black),),
                    SizedBox(height: 10,),
                    Text('We know life gets busy, and grocery shopping shouldn’t be a chore. That’s why we’ve created a reliable, easy-to-use app to help you find, shop, and manage your groceries faster than ever.',
                    style: TextStyle(fontSize: 18, color: Colors.black),),
                    SizedBox(height: 10,),
                    Text('Your satisfaction is at the heart of everything we do.',
                    style: TextStyle(fontSize: 18, color: Colors.black),),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        Text('4.) Local & Community-Oriented',
                style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                    Text('At My Grocery App, we connect you with the stores and products you love',
                    style: TextStyle(fontSize: 18, color: Colors.black),),

                    Text(' right from your neighborhood. ',
                    style: TextStyle(fontSize: 18, color: Colors.black),),
                 
                    Text('We support local markets, fresh produce, and real people who make your meals matter.',
                    style: TextStyle(fontSize: 18, color: Colors.black),),

                    SizedBox(height: 10,),
                    Text('Think of us as your digital bridge to better, fresher, and more personal grocery shopping.',
                    style: TextStyle(fontSize: 18, color: Colors.black),),

                        ],
                      ),
                      SizedBox(height: 20,),
                      Column(
                      children: [
                        Text('5.)Professional & Mission-Driven',
                style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                    Text('My Grocery App is on a mission to simplify the grocery experience for everyone.',
                    style: TextStyle(fontSize: 18, color: Colors.black),),

                    Text(' We bring innovation and efficiency to your daily shopping routine,',
                    style: TextStyle(fontSize: 18, color: Colors.black),),
                 
                    Text(' helping you save time, reduce waste, and make smarter choices.',
                    style: TextStyle(fontSize: 18, color: Colors.black),),

                    SizedBox(height: 10,),
                    Text('With a growing network of partners and a user-first design, we’re transforming how you shop for the better.',
                    style: TextStyle(fontSize: 18, color: Colors.black),),

                        ],
                      ),
                    ],
                  ),
                );
              },
                ),
        ),
              ],
            ),
          ),
        );
      }
}
