
import 'package:flutter/material.dart';
import 'surveyList_page.dart';

class LoginPage extends StatefulWidget{
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage>{
  String userId ='';
  String pw ='';
  
  void login(){
    print('Id: $userId');
    print('Password: $pw');
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => SurveyListPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Container(
        padding: EdgeInsets.fromLTRB(31, 140, 31,16),

        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              // Colors.black,
              Color(0xFF6575FF),
              Color(0xFF897FFF),
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            Text(
              'vestie',
              style: TextStyle(
                fontFamily: 'logo',
                color: Colors.white,
                fontSize: 45,
              ),
            ),
            SizedBox(height: 25.0),
            Container(
              height: 50,
              width: 327,
              child:TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outlined,color: Color(0xFF6A76FF)),
                  labelText: 'Id',
                  labelStyle: TextStyle(
                    color: Color(0XFF6E78FF), // 원하는 컬러로 설정하세요
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.4),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22.0),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder:
                  OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                  onChanged: (value) {
                    setState(() {
                      userId = value;
                    });
                  },
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              height: 50,
              width: 327,
              child:TextField(
                  onChanged: (value) {
                    setState(() {
                      pw = value;
                    });
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline_rounded,color: Color(0xFF6A76FF),),
                    labelText: 'password',
                    labelStyle: TextStyle(
                      color: Color(0XFF6E78FF), // 원하는 컬러로 설정하세요
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.4),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22.0),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder:
                    OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton (
              onPressed: login,
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(327.0, 50.0), // 버튼의 최소 크기를 150x50으로 설정
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color(0xFF4E44EC)
                ),
              ),
              child: Text('Login',style: TextStyle(
                color: Colors.white, // 텍스트의 색상을 빨간색으로 설정
                fontSize: 16,
              ),),
            ),
            SizedBox(height: 14.0),
            Text(
              '회원가입',
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}