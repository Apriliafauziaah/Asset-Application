import 'package:aplikasi/homepage.dart';
import 'package:aplikasi/signup.dart';
import 'package:flutter/material.dart';

class LoginHehe extends StatefulWidget {
  const LoginHehe({super.key});

  @override
  State<LoginHehe> createState() => _LoginHeheState();
}

class _LoginHeheState extends State<LoginHehe> {
  bool hidden = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: size.height,
        child: Stack(
          children: <Widget>[
            backgroundHeader(size),
            avatar(size),
            formInput(size),
            loginButton(size, context),
            Positioned(
              top: size.height / 1.2,
              child: Row(
                children: [
                  const Text('daftar disini'),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Signup()),
                        );
                      },
                      child: const Text('data'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Positioned avatar(Size size) {
    return Positioned(
      top: size.height / 8,
      left: (size.width - (size.width / 3.5)) / 2,
      right: (size.width - (size.width / 3.5)) / 2,
      child: Center(
        child: Container(
          height: size.width / 3.5,
          width: size.width / 3.5,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }

  Positioned loginButton(Size size, BuildContext context) {
    return Positioned(
      top: ((size.height / 3) + (size.height / 3)) - 30,
      left: size.width / 5,
      right: size.width / 5,
      child: SizedBox(
        height: 60,
        child: MaterialButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
            ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 15),
              shape: const StadiumBorder(),
              shadowColor: const Color.fromARGB(255, 205, 205, 93),
            );
          },
          color: const Color.fromARGB(255, 175, 80, 175),
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
          child: const Text(
            "Login",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
      ),
    );
  }

  Positioned formInput(Size size) {
    return Positioned(
      top: size.height / 3,
      left: size.width / 20,
      right: size.width / 20,
      child: Container(
        height: size.height / 3,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(45),
          boxShadow: [
            BoxShadow(
                color: const Color.fromARGB(255, 21, 21, 21).withOpacity(0.3),
                blurRadius: 15,
                spreadRadius: 5),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(size.width / 10),
          child: Column(
            children: [
              const Text(
                "Sign In",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 15),
              const TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 152, 152, 152),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 152, 152, 152),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                    hintText: "Enter Username Here",
                    labelText: "Username"),
              ),
              const SizedBox(height: 15),
              TextField(
                obscureText:
                    hidden, //if passenable == true, show **, else show password character
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      hidden = !hidden;
                    },
                    child:
                        Icon(hidden ? Icons.visibility : Icons.visibility_off),
                  ),
                  suffixIconColor: const Color.fromARGB(255, 152, 152, 152),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 152, 152, 152),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 152, 152, 152),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Positioned backgroundHeader(Size size) {
    return Positioned(
      child: Container(
        height: size.height / 2,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 126, 125, 125),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70),
            bottomRight: Radius.circular(70),
          ),
        ),
      ),
    );
  }
}
