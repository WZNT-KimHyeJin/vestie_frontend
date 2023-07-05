import 'package:flutter/material.dart';

//widgets
class pageTitleWidget extends StatelessWidget {
  final String title;

  const pageTitleWidget({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      padding: EdgeInsets.fromLTRB(15, 45, 0, 0),
      child: Text(title,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold)),
    );
  }
}
