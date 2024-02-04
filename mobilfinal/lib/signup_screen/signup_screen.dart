import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  MaterialColor color = Colors.blue;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
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
                        'Sign Up',
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
                    TextFormField(
                      controller: confirm,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: false,
                      decoration: InputDecoration(
                          label: Text("Confirm Password"),
                          prefixIcon: (Icon(Icons.password)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/login');
                        },
                        child: const Text("Already have an account? Login")),
                    ElevatedButton(
                        onPressed: () {
                          String _email = email.text.toString();
                          String _password = password.text.toString();
                          String _confirm = confirm.text.toString();
                          if (_email.isNotEmpty &&
                              _password.isNotEmpty &&
                              _confirm.isNotEmpty &&
                              _password == _confirm) {
                            print('Email is: ${email.text.toString()}');
                            print("Password is: ${password.text.toString()}");
                            print("Registered succesfully");
                            Navigator.of(context).pushNamed('/home');
                          } else {
                            print("Error");
                          }
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          padding: EdgeInsets.symmetric(
                              horizontal: 32, vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ))
                  ]),
            ),
          ),
        ));
  }
}
