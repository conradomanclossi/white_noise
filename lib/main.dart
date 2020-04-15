import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// Pages
import 'pages/items/theme.dart';
import 'pages/controllers/controller.dart';
import 'pages/controllers/song_controller.dart';
import 'pages/home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => Controller()),
        Provider(create: (_) => Song()),
        ChangeNotifierProvider(
            create: (_) => ThemeProvider(isLightTheme: true)),
      ],
      child: MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
