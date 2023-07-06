// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//widgets
import "../widget/pageTitleWidgets/pageTitleWidget.dart";
import "../widget/surveyParticipationWidgets/shortFormSurvey.dart";

class SurveyParticipatePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
            children: [
              pageTitleWidget(title: "설문을 시작합니다."),
              SizedBox(height: 30,),
              ShortFormSurvey("surveyUrl")
            ],
          )
    );
  }
}
