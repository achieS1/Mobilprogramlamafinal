import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _MyLogin();
}

class _MyLogin extends State<Login> {
  MaterialColor color = Colors.blue;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 141, 117, 250),
        body: Center(
          child: Container(
            height: 450,
            width: 380,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Text(
                        'Welcome Back',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      decoration: InputDecoration(
                          label: Text("Email"),
                          prefixIcon: (Icon(Icons.email)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    TextFormField(
                      controller: password,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: false,
                      decoration: InputDecoration(
                          label: Text("Password"),
                          prefixIcon: (Icon(Icons.password)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/signup');
                        },
                        child: const Text("Don't have an account? Sign up")),
                    ElevatedButton(
                        // decoration: BoxDecoration(
                        //   color: Colors.blue, // Set the background color
                        // ),
                        onPressed: () {
                          String _email = email.text.toString();
                          String _password = password.text.toString();
                          if (_email.isNotEmpty && _password.isNotEmpty) {
                            Navigator.of(context).pushNamed('/home');
                          } else {
                            print("Error");
                          }
                          print('Email is: ${email.text.toString()}');
                          print("Password is: ${password.text.toString()}");
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary:
                                Colors.blue, // Set the background color to blue
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ))),
                  ]),
            ),
          ),
        ));
  }
}
