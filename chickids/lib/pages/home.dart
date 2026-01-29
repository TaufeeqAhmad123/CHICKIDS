import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          Navigator.pop(context);
        },
       ),
      ),
    );
  }
}