
import 'package:flutter/material.dart';
import 'package:vestie/pages/Login_SignUp/signUp_page.dart';
import 'package:vestie/services/settingValues.dart';


//widgets
import '../../widget/widgets4AllPage/buttons/longRoundedButton.dart';
import '../../widget/loginPageWidgets/loginTextField.dart';

//page
import '../appFirstPage.dart';

class LoginPage extends StatefulWidget{
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage>{
  String userId ='';
  String pw ='';

  Icon idIcon = Icon(Icons.person_outline_sharp,color: Color(TextBright));
  Icon pwIcon = Icon(Icons.lock_outline_rounded,color: Color(TextBright));

  void idInputChange(String value){
    setState(() {
      userId = value;
    });
  }
  void pwInputChange(String value){
    setState(() {
      pw = value;
    });
  }
  void login(){
    print('Id: $userId');
    print('Password: $pw');
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => AppfirstPages()));
  }

  void move2SignUp(){
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => SignUpPage()));
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
            LoginTextFiled(label_text:"id",prefix_icon:idIcon,obscureText_value:false,onChangeFunc: idInputChange,),
            SizedBox(height: 8.0),
            LoginTextFiled(label_text:"password",prefix_icon:pwIcon,obscureText_value:true,onChangeFunc:pwInputChange,),
            SizedBox(height: 16.0),
            LongRoundedButton(btn_title: "Login", onPressedFunc: login,text_color: TextBright,bnt_color: LoginBtn),
            SizedBox(height: 14.0),
            TextButton(onPressed: move2SignUp,
                child: Text(
                  '회원가입',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                  ),
                ),)
          ],
        ),
      ),
    );
  }
}