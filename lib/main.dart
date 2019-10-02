import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeContent(
        number: _currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('One'),
            icon: Icon(Icons.looks_one),
          ),
          BottomNavigationBarItem(
            title: Text('Two'),
            icon: Icon(Icons.looks_two),
          ),
          BottomNavigationBarItem(
            title: Text('Three'),
            icon: Icon(Icons.looks_3),
          ),
        ],
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  final int number;

  HomeContent({this.number});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '${number + 1}',
        style: TextStyle(
          fontSize: 64,
        ),
      ),
    );
  }
}
