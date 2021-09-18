import 'package:firstapp/Widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days=30;
  final String name='MyApp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Catalogue App"),
        ),
        body: Center(
          child: Container(
            child: Text('Welcome to $days of $name'),

        ),
       ),
       drawer: MyDrawer(),
     );
  }
}