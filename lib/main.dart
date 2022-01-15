import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'model.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider<Counter>(create: (_) => Counter())],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Tasbeeh Counter',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: AnimatedSplashScreen(
                duration: 300,
                splash:  Icon(Icons.home, color: Colors.white,
                size: 150, 
                ),
                nextScreen: MyHomePage(),
                splashTransition: SplashTransition.slideTransition,
                pageTransitionType: PageTransitionType.leftToRight,
                backgroundColor: Colors.blue,
                splashIconSize: 30.0,)));
  }
}
