import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/Counter.page.dart';
import 'package:flutter_first_app/pages/home.page.dart';

void main() {
  runApp(MyApp()); // MyApp etant la classe de mon app principale
  // On peut aussi faire runApp(new MyApp()) mais en dart le new est facultatif
}

// Tout le squellette de la classe peut etre generé en auto completion en
// tapant <<stless>>
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Par Default : return Container();
    return MaterialApp(
      routes: {
        "/" : (context) => HomePage(),
        "/counter" : (context) => CounterPage()
      },
      theme: ThemeData(   // Pour la gestion d'un theme globale pour tt ce composant
        primarySwatch: Colors.deepOrange ,
            textTheme : TextTheme(
          bodyText2: TextStyle(fontSize: 40, color: Colors.blue)
      )
      ),

        );
  }
}


