import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter page...", style: Theme.of(context).textTheme.headline3,
            ),
          ],
        ),
      ),
    );
  }
}