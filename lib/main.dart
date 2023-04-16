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
      title: 'First App Flutter',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        textButtonTheme: const TextButtonThemeData(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.amber),
              foregroundColor: MaterialStatePropertyAll(Colors.white),
              elevation: MaterialStatePropertyAll(5),
              shadowColor: MaterialStatePropertyAll(Colors.deepOrange),
              overlayColor: MaterialStatePropertyAll(Color(0xFFFF9526))
            )
        )

      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.brown,
        textButtonTheme: const TextButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.brown),
              foregroundColor: MaterialStatePropertyAll(Colors.white),
                elevation: MaterialStatePropertyAll(5),
                shadowColor: MaterialStatePropertyAll(Colors.grey),
                overlayColor: MaterialStatePropertyAll(Color(0xFF574634))

            )
        )
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First app flutter'),
      ),
      body: Center(
          child: TextButton(
              child: Text('Test Button'),
              onPressed: () { print('Button Pressed'); },
              onHover: (a) { print('Hovering'); }
          ),

      )
    );

  }
}

