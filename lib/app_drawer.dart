import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  //store

  @override
  Widget build(BuildContext context) {
    final List<String> news = [
      'New product arrivals',
      'Weekly deals & offers',
      'Healthy eating tips',
      'Seasonal recipes',
      'Local store news or events',
    ];

    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('Shop'),
            onTap: () {
              Navigator.pushNamed(context, '/shop');
            },
          ),
          ListTile(
            title: Text('Newsstand'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/newsstand',
                arguments: {'news': news},
              );
            },
          ),
          ListTile(
            title: Text('Who we are'),
            onTap: () {
              Navigator.pushNamed(context, '/info');
            },
          ),
          ListTile(title: Text('My Profile'),
          onTap: () {
            Navigator.pushNamed(context, '/profile');
          },),
          ListTile(
            title: Text('Basket'),
            onTap: () {
              Navigator.pushNamed(context, '/cart');
            },
          ),
        ],
      ),
    );
  }
}
