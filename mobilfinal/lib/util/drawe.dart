import 'package:flutter/material.dart';

class Drawe extends StatefulWidget {
  const Drawe({super.key});

  @override
  State<Drawe> createState() => _DraweState();
}

class _DraweState extends State<Drawe> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue, // Set the background color
              ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/logo (2).png')),
              accountName: Text("İstinye"),
              accountEmail: Text("istinye@gmail.com")),
          ListTile(
            title: Text("Home"),
            onTap: () {
              Navigator.of(context).pushNamed('/home');
            },
            splashColor: Colors.blue,
          ),
          ListTile(
            title: Text("Contact Us"),
            onTap: () {
              Navigator.of(context).pushNamed('/contactus');
            },
            splashColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
