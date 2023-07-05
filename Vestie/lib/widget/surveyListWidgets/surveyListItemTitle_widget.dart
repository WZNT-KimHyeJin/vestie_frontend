import 'package:flutter/material.dart';

class ListItemTitle extends StatelessWidget {
  final String d_day;
  final String title;

  const ListItemTitle({
    required this.d_day,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column( // d-day, title, tag : title widget
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row( // d-day , title
          children: [
            Container(
              width: 40,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xFFEDEFFC),
              ),
              child:Center(
                child: Text("D-"+d_day, style: TextStyle(
                  fontSize: 8,
                  color: Color(0xFF6875FF),
                ),),
              ),
            ),
            SizedBox(width: 10,),
            Text(this.title, style: TextStyle(
              fontWeight: FontWeight.bold,  // 텍스트를 볼드체로 설정
            )),
          ],
        ),
        Row( // tag 나열 : 얘도 widget으로 바꿔버릴까봐여 ㅇㅅㅇ..
          children: [
            Text("#태그", style: TextStyle(fontSize: 12),),
            SizedBox(width: 4,),
            Text("#태그", style: TextStyle(fontSize: 12)),
            SizedBox(width: 4,),
            Text("#태그", style: TextStyle(fontSize: 12)),
          ],
        ),
      ],
    );
  }
}
