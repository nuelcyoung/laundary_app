import 'package:flutter/material.dart';
import 'package:ilaundary/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iLaundary',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text("iLaundary"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () => (context), icon: const Icon(Icons.person_add))
          ],
        ),
        drawer: const Drawer(),
        body: const HomeScreen(),
      )),
    );
  }
}
