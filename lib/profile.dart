import 'package:flutter/material.dart';
import 'package:my_grocery_app/app_drawer.dart';
import 'package:my_grocery_app/main.dart';
import 'package:my_grocery_app/favorite.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('My Grocery App', style: TextStyle(fontSize: 30, color: Colors.green),),),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
        ],
        backgroundColor: Colors.white,
      ),
      drawer: AppDrawer(),
      body: Container(
        color: const Color.fromARGB(255, 157, 241, 160) ,
      child:  Center(
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
                    Text('My Profile', style: TextStyle(fontSize: 25),),
                    SizedBox(width: 10,),
                    Icon(Icons.person, color: Colors.deepOrange,size: 30,)],),),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('< Back'),
                  ),
                ],
                
              ),
              
            ),
            SizedBox(height: 20,),
            Center(
              child:Column(
                children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 5,
                  )
                ),
                child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQln08USP3Q0r5SGxW1EHn296vhBiS0VvqX4Q&s'),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
              child: Column(children: [ Text('Name: Ernie Mortola', style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold) ,),
              Text('Email: ernie.mortola@normi.edu.ph', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text('Phone Number: 09123456789', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text('Location: Cabadbaran City', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                ],
                
              ),
              ),
              Container(
                child: Column(
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, '/favorite');
                    }, 
                    style: ElevatedButton.styleFrom(minimumSize: Size(200, 40),backgroundColor: Colors.white),
                    child: Text('My Favorite ', style: TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),),),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, '/main');
                    }, 
                    style: ElevatedButton.styleFrom(minimumSize: Size(200, 40),backgroundColor: Colors.white),
                    child: Text('Sign Out', style: TextStyle(fontSize: 20, color: Colors.redAccent, fontWeight: FontWeight.bold),)),
                  ],
                ),
              ),
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