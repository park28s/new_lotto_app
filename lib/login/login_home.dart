import 'package:flutter/material.dart';
import 'package:flutter_111/login/login_widget.dart';


class LoginHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'CookieRun'
      ),
      home: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Scaffold(
              body: SingleChildScrollView(
                child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          '로그인',
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 30.0),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          child: buildEmailTF(),
                        ),
                        SizedBox(height: 20),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          child: buildPasswordTF(),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          child: buildNewAndPasswordBtn(context),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          child: buildRememberMecheckbox(),
                        ),
                        SizedBox(height: 10),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 100),
                          child: buildLoginBtn(),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          child: buildSignInWithText(),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          child: buildSocialBtnRow(),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          child: buildSingnupBtn(context),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ),
      
    );
  }
}