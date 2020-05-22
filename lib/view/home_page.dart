import 'package:flutter/material.dart';

import '../model/content.dart';
import 'content_blue.dart';
import 'content_green.dart';
import 'content_purple.dart';
import 'content_red.dart';
import 'content_yellow.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _contentIndex = 0;
  List<Content> _listContent = <Content>[
    Content(
      label: "Red",
      iconData: Icons.person,
      widget: ContentRed(),
    ),
    Content(
      label: "Yellow",
      iconData: Icons.language,
      widget: ContentYellow(),
    ),
    Content(
      label: "Green",
      iconData: Icons.home,
      widget: ContentGreen(),
    ),
    Content(
      label: "Blue",
      iconData: Icons.inbox,
      widget: ContentBlue(),
    ),
    Content(
      label: "Purple",
      iconData: Icons.settings,
      widget: ContentPurple(),
    ),
  ];

  List<BottomNavigationBarItem> _listNavigationItem() {
    return List.generate(
      _listContent.length,
      (int index) {
        return BottomNavigationBarItem(
          icon: Icon(_listContent[index].iconData),
          title: Text(_listContent[index].label),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_listContent[_contentIndex].label),
      ),
      body: _listContent[_contentIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        items: _listNavigationItem(),
        onTap: (int index) {
          _contentIndex = index;
          setState(() {});
        },
        currentIndex: _contentIndex,
      ),
    );
  }
}
