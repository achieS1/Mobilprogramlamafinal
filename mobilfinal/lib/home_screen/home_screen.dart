import 'package:flutter/material.dart';
import 'package:flutter_application_test/util/drawe.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _MyHomeScreen();
}

class _MyHomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ana sayfam'),
        automaticallyImplyLeading: true,
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      drawer: Drawe(),
      body: Center(
        child: Text("Yakında\n Gelecek "),
      ),
    );
  }
}
