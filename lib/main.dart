import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First App Flutter',
      theme: ThemeData(
          primarySwatch: Colors.amber,
          textButtonTheme: const TextButtonThemeData(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.amber),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  elevation: MaterialStatePropertyAll(5),
                  shadowColor: MaterialStatePropertyAll(Colors.deepOrange),
                  overlayColor: MaterialStatePropertyAll(Color(0xFFFF9526))))),
      darkTheme: ThemeData(
          primarySwatch: Colors.brown,
          textButtonTheme: const TextButtonThemeData(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.brown),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  elevation: MaterialStatePropertyAll(5),
                  shadowColor: MaterialStatePropertyAll(Colors.grey),
                  overlayColor: MaterialStatePropertyAll(Color(0xFF574634))))),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentState = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First app flutter'),
          // shape: Border(
          //   top: BorderSide(color: Colors.lightBlue.shade50),
          //   bottom: BorderSide(color: Colors.lightBlue.shade900),
          //   left: BorderSide(color: Colors.lightBlue.shade50),
          //   right: BorderSide(color: Colors.lightBlue.shade900),
          // )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('floating button is pressed');
          },
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'HOME'),
            NavigationDestination(icon: Icon(Icons.person), label: 'PROFILE'),
            NavigationDestination(icon: Icon(Icons.menu), label: 'MENU'),
          ],
          onDestinationSelected: (int index) {
            print('$index is the current page index');
            setState(() {
              currentState = index;
            });
          },
          selectedIndex: currentState,
          animationDuration: Duration(seconds: 1),
        ),
        body: Center(
          child: TextButton(
              child: const Text('Test Button'),
              onPressed: () {
                print('Button Pressed');
              },
              onLongPress: () {
                print('Button Loooooooong Pressed');
              },
              onFocusChange: (a) {
                print('Button Released $a');
              },
              onHover: (a) {
                print('Hovering $a');
              }),
        ));
  }
}
