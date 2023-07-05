import 'package:flutter/material.dart';

//widgets
import 'surveyListItem_widget.dart';

class SurveyList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
      return Expanded(child:  ListView(
        children: [
          SurveyListItem(title: "대학생 설문조사 참여", d_day: "9",),
          SurveyListItem(title: "신예찬 결혼하자",d_day: "Day",),
          SurveyListItem(title: "아카데미 언제 끝나요",d_day: "100",),

        ],
      )
    );
  }
}
