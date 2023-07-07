import 'package:flutter/material.dart';

//widgets

//pages
class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 60,
      child: TabBar(
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.transparent,
        tabs: [
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.feed_outlined),
          ),
          Tab(
            icon: Icon(Icons.edit_note_rounded),
          ),
          Tab(
            icon: Icon(Icons.folder_outlined),
          ),
          Tab(
            icon: Icon(Icons.person_outline),
          ),
        ],
      ),
    );
  }
}
