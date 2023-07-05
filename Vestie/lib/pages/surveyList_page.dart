import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//widgets
import '../widget/surveyListWidgets/surveyListItem_widget.dart';
import "../widget/pageTitleWidgets/pageTitleWidget.dart";
import "../widget/surveyListWidgets/surveyList_widget.dart";

class SurveyListPage extends StatefulWidget {
  const SurveyListPage({super.key});
  @override
  State<StatefulWidget> createState() => SurveyListPageState();
 }

 class SurveyListPageState extends State<SurveyListPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child:
        Column(children: [
          pageTitleWidget(title: "설문조사 참여"),
          SizedBox(height: 20,),
          SurveyList(),
        ]
        )
      ),
    );
  }

 }
