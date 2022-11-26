import 'package:aplikasi/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    bool hidden = true;

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              // color: Color.fromARGB(255, 126, 125, 125),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70),
                bottomRight: Radius.circular(70),
              ),
            ),
          ),
          Positioned(
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("assets/logo.png", width: size.width / 3),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          Positioned(
            top: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 420,
                  width: MediaQuery.of(context).size.width - 40,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(45),
                    boxShadow: [
                      BoxShadow(
                          color:
                              Color.fromARGB(255, 21, 21, 21).withOpacity(0.3),
                          blurRadius: 15,
                          spreadRadius: 5),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 30, 20, 0),
                            child: Column(
                              children: const [
                                Text(
                                  "SIGN UP",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 10, 30, 30),
                          child: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 152, 152, 152),
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30.0),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 152, 152, 152),
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30.0),
                                      ),
                                    ),
                                    hintText: "Full Name",
                                    // hintStyle: TextStyle(fontSize: 14),
                                    labelText: "Full Name"),
                              ),
                              const SizedBox(height: 20),
                              TextField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 152, 152, 152),
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30.0),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 152, 152, 152),
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30.0),
                                      ),
                                    ),
                                    hintText: "Email Adress",
                                    // hintStyle: TextStyle(fontSize: 14),
                                    labelText: "Email Adress"),
                              ),
                              const SizedBox(height: 20),
                              TextField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 152, 152, 152),
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30.0),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 152, 152, 152),
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30.0),
                                      ),
                                    ),
                                    hintText: "Email Adress",
                                    // hintStyle: TextStyle(fontSize: 14),
                                    labelText: "Email Adress"),
                              ),
                              const SizedBox(height: 20),
                              // Padding(
                              //   padding: const EdgeInsets.all(15.0),
                              TextField(
                                obscureText:
                                    hidden, //if passenable == true, show **, else show password character
                                decoration: InputDecoration(
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      hidden = !hidden;
                                    },
                                    child: Icon(hidden
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                  ),
                                  suffixIconColor:
                                      Color.fromARGB(255, 152, 152, 152),
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 640,
            left: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width - 140,
                  height: 60,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const Signup()),
                      );
                      style:
                      ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: const StadiumBorder(),
                        shadowColor: Color.fromARGB(255, 205, 205, 93),
                      );
                    },
                    color: Color.fromARGB(255, 175, 80, 175),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80),
                    ),
                    child: const Text(
                      "SIGN UP",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 700,
            left: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Allready have an account?',
                        style: TextStyle(
                          color: Color.fromARGB(255, 152, 152, 152),
                        ),
                      ),
                      Text(
                        "Sign In",
                        style: TextStyle(
                            color: Color.fromARGB(255, 110, 110, 110),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      )
                      // Button(
                      //   text: 'Login',
                      //   clear: true,
                      //   onTap: () => Navigator.of(context).push(
                      //     MaterialPageRoute(
                      //       builder: (context) => Login()
                      //     ),
                      //   ),

                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 750,
            left: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Copyright',
                  style: TextStyle(
                    color: Color.fromARGB(255, 152, 152, 152),
                  ),
                ),
                // Text(
                //   "Sign In",
                //   style: TextStyle(
                //       color: Color.fromARGB(255, 110, 110, 110),
                //       fontWeight: FontWeight.bold,
                //       fontSize: 14),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
