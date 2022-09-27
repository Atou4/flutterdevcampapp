
import 'package:flutter/material.dart';
import 'package:recipe_app/utils/theme.dart';
import 'package:recipe_app/views/bottom_nav.dart';


void main() async {
 
  runApp(const App(),
  );
}


class App extends StatefulWidget {
 
  

  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Recipe app',
          theme: Apptheme.lightTheme,
          home: const BottomNav()
          );

  }

}

