import 'package:flutter/material.dart';
import 'package:flutter_app_humberger/screens/categories.dart';
import 'package:flutter_app_humberger/screens/hambergerList.dart';
import 'package:flutter_app_humberger/screens/header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.teal,
          centerTitle: true,
        ),
        bottomAppBarColor: Colors.teal,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.teal,
        ),
      ),
      home: Hamberger(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Hamberger extends StatefulWidget {
  @override
  _HambergerState createState() => _HambergerState();
}

class _HambergerState extends State<Hamberger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text('Deliver Me'),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart),
              )
            ],
          ),
          Header(),
          Categories(),
          HambergerList(),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Row(
            children: [
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_alert),
                color: Colors.white,
              ),
              Spacer(),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.turned_in),
                color: Colors.white,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
