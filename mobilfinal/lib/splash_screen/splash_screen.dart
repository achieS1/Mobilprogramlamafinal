import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _MySplashScreen();
}

class _MySplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), (){
      print("Delayed");
      Navigator.of(context).pushNamed('/login');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/logo (2).png',
              height: 200, // Set the height of the image
              width: 200, // Set the width of the image
              fit: BoxFit.contain, // Set the fit property of the image
              // color: Colors.blue, // Set the color of the image
              // colorBlendMode: BlendMode.colorDodge, // Set the color blend mode of the image
              alignment: Alignment.center, // Set the alignment of the image
              repeat: ImageRepeat.repeat, ),
            const CircularProgressIndicator(),],
        )
      ),
    );
  }
}