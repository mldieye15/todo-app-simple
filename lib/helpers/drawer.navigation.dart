import 'package:flutter/material.dart';
import 'package:todoapp_sqf/screens/category.screen.dart';

import '../screens/home.screen.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({Key? key}) : super(key: key);

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("mldieye15"),
            accountEmail: Text("laminedev@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1587620962725-abab7fe55159?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZGV2ZWxvcGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
            ),
            decoration: BoxDecoration(
              color: Colors.deepOrange,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HomeScreen())
            ),
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text("Categories"),
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const CategoriesScreen())
            ),
          ),
        ],
      ),
    );
  }
}
