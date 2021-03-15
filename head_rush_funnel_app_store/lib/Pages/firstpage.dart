import 'package:flutter/material.dart';
import 'package:head_rush_funnel_app_store/Pages/homepage.dart';

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Click here to start'),
          onPressed: () {
            // Navigate to second route when tapped.
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Homepage();
            }));
          },
        ),
      ),
    );
  }
}
