import 'package:flutter/material.dart';

//widget
import '../widget/surveyRegisterPageWidgets/surveyRegisterTopBar.dart';

//page

class SurveyRegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SurveyRegisterPageState();
}

class SurveyRegisterPageState extends State<SurveyRegisterPage> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title:SurveyRegisterTopBar()
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[


          ],
        ),
      ),
    );
  }


}
