
import 'package:disenos/screens/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //color de la barra de tareas
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic_design' : ( _ ) => BasicDesignScreen(),
        'scroll_screen' : ( _ ) => ScrollScreen(),
        'home_screen' : ( _ ) => HomeScreen()
      }
    );
  }
}
