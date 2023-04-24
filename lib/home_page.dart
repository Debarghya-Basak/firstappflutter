import 'package:firstappflutter/profile_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          child: const Text('Test Button'),
          onPressed: () {
            print('Button Pressed');
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return const ProfilePage();
            }));
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
    );
  }
}
