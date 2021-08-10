import 'package:flutter/material.dart';
import 'package:travel_app_project/Screens/auth_screen.dart';
import 'package:travel_app_project/Screens/home_page_screen.dart';
import 'package:provider/provider.dart';
import 'package:travel_app_project/components/lists.dart';           
void main() {
  runApp(
    // ChangeNotifierProvider(
    //   create: (context) => ApplicationState(),
    //   builder: (context, _) => MyApp(),
    // ),
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Lists()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}
