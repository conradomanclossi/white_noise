import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/controllers/controller.dart';
import 'pages/home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => Controller(),
      child: MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
