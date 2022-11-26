import 'package:aplikasi/add.dart';
import 'package:flutter/material.dart';

class Listassets extends StatefulWidget {
  final String data;
  const Listassets({super.key, required this.data});

  @override
  State<Listassets> createState() => _ListassetsState();
}

class _ListassetsState extends State<Listassets> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double bodySize = size.height / 1.2;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.data,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black54,
        elevation: 0,
      ),
      backgroundColor: Color(0XFFeeeeee),
      body: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height / 1.7,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 126, 125, 125),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(70),
                  ),
                ),
              ),
            ),
            listAsset(bodySize, size),
            addbutton(bodySize, size, context)
          ],
        ),
      ),
    );
  }

  Container listAsset(double bodySize, Size size) {
    return Container(
      height: bodySize,
      width: size.width,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(55),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 15,
              spreadRadius: 1.2),
        ],
      ),
      padding: EdgeInsets.all(20),
      child: ListView.separated(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            // leading: Icon(Icons.info),
            title: Text("Ini title $index"),
            subtitle: Text("Ini subtilte dari $index"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () {
                      print("edit nih gan");
                    },
                    icon: Icon(Icons.edit)),
                IconButton(
                    onPressed: () {
                      print("deelete nih gan");
                    },
                    icon: Icon(Icons.delete)),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(
          color: Colors.grey.shade300,
        ),
      ),
    );
  }

  Positioned addbutton(double bodySize, Size size, BuildContext context) {
    return Positioned(
      top: bodySize - 30,
      left: size.width / 5,
      right: size.width / 5,
      child: SizedBox(
        height: 60,
        child: MaterialButton(
          onPressed: () {
            // Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Add()),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.add,
                color: Colors.white,
              ),
              Text(
                "ADD",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
