import 'package:aplikasi/listasset.dart';
import 'package:aplikasi/loginhehe.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        leading: Transform.rotate(
          angle: 90 * math.pi / 180,
          child: IconButton(
            icon: Icon(
              Icons.bar_chart_rounded,
              color: Colors.black54,
            ),
            onPressed: () {},
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CircleAvatar(),
          ),
        ],
      ),
      backgroundColor: Color(0XFFeeeeee),
      body: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            title(size),
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
            menu(size),
            buttonview(size, context),
          ],
        ),
      ),
    );
  }

  Positioned buttonview(Size size, BuildContext context) {
    return Positioned(
      top: (((size.height - size.height / 1.7) / 2) + (size.height / 1.7)) - 30,
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
            "VIEW ALL",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
      ),
    );
  }

  Positioned menu(Size size) {
    return Positioned(
      top: (size.height - size.height / 1.7) / 2,
      left: size.width / 20,
      right: size.width / 20,
      child: Container(
        height: size.height / 1.7,
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
        padding: EdgeInsets.all(15),
        child: Wrap(
          runAlignment: WrapAlignment.center,
          alignment: WrapAlignment.center,
          spacing: 15,
          runSpacing: 15,
          children: menunya(size),
        ),
      ),
    );
  }

  Positioned title(Size size) {
    return Positioned(
      top: size.height / 8,
      left: (size.width - (size.width / 3.5)) / 2,
      right: (size.width - (size.width / 3.5)) / 2,
      child: Text(
        'Dashboard',
        style: TextStyle(
            fontSize: 20,
            color: Colors.grey.shade600,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  List<Widget> menunya(Size size) {
    double paddingNyputih = size.width / 20;
    double paddingrunningnya = 30;
    List<Widget> result = [];
    for (var element in data) {
      result.add(InkWell(
        onTap: (() {
          switch (element["route"]) {
            case "asset_list":
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Listassets(
                    data: element["title"],
                  ),
                ),
              );
              break;
            case "list_move":
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Listassets(
                          data: element["title"],
                        )),
              );
              break;
            case "scan_asset":
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Listassets(
                          data: element["title"],
                        )),
              );
              break;
            default:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginHehe()),
              );
          }
        }),
        child: Container(
          width: (size.width / 2) - paddingrunningnya - paddingNyputih,
          height: (size.width / 2) - paddingrunningnya - paddingNyputih,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              // stops: [0.1, .7],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: element["color"],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              element["icon"] as Icon,
              SizedBox(height: 10),
              Text(
                element["title"],
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ));
    }
    return result;
  }
}

List<Map<String, dynamic>> data = [
  {
    "title": "List Asset",
    "icon": const Icon(
      Icons.list,
      size: 50,
      color: Color(0xFFFFFFFF),
    ),
    "color": [
      Color.fromARGB(255, 243, 243, 243),
      Color.fromARGB(255, 169, 37, 198),
    ],
    "route": "asset_list",
  },
  {
    "title": "List Movement",
    "icon": const Icon(
      Icons.drive_file_move_outline,
      size: 50,
      color: Color(0xFFFFFFFF),
    ),
    "color": [
      Color.fromARGB(255, 236, 236, 237),
      Color.fromARGB(255, 223, 127, 79),
    ],
    "route": "list_move",
  },
  {
    "title": "Scan Asset",
    "icon": const Icon(
      Icons.qr_code,
      size: 50,
      color: Color(0xFFFFFFFF),
    ),
    "color": [
      Color.fromARGB(255, 241, 242, 242),
      Color.fromARGB(255, 236, 92, 215),
    ],
    "route": "scan_asset",
  },
  {
    "title": "XXXXX",
    "icon": const Icon(
      Icons.playlist_add_outlined,
      size: 50,
      color: Color(0xFFFFFFFF),
    ),
    "color": [
      Color.fromARGB(255, 238, 238, 238),
      Color.fromARGB(255, 103, 230, 113),
    ],
    "route": "scan_asset",
  }
];
