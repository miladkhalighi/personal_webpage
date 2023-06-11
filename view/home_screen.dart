import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [

        Row(
          children: [
            Text('data',),
            Text('data',),
            Text('data',)
          ],
        )

      ],),
    );
  }
}