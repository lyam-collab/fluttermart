import 'dart:io';

import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: Container(
          color: Colors.amber,
          child: Column(
            children: [],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Titre1"),
          BottomNavigationBarItem(
              icon: Icon(Icons.accessible_outlined), label: "Titre2"),
        ],
        backgroundColor: Colors.amber,
        elevation: 10,
        iconSize: 25,
        onTap: (value) {
          print("Selection de $value");
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {
          exit(0);
        },
        child: Icon(Icons.arrow_back),
      ),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Titre"),
        leading: IconButton(
            onPressed: () {
              print("Une trace....");
            },
            icon: Icon(Icons.menu)),
        actions: [
          IconButton(
              onPressed: () {
                print("Une trace....");
              },
              icon: Icon(
                Icons.camera,
                color: Colors.white,
                size: 30,
              )),
          IconButton(
              onPressed: () {
                print("Une trace....");
              },
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 30,
              )),
        ],
      ),
      backgroundColor: Colors.deepOrange,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Bienvenue à l'UGB",
            style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                backgroundColor: Colors.black),
          )
        ],
      ),
    );
  }
}
