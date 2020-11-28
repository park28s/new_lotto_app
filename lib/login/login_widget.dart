import 'package:flutter/material.dart';
import 'package:flutter_111/login/sign/sign_up.dart';
import 'package:flutter_111/login/style.dart';


bool rememberMe = false;

Widget buildEmailTF() {
  return Column(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Email',
          style: kLabelStyle,
        ),
      ),
      SizedBox(
        height: 4.0,
      ),
      Container(
        decoration: kBoxDecorationStyle,
        alignment: Alignment.centerLeft,
        height: 50.0,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
          ),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 13.0),
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Enter your Email',
              hintStyle: kHintTextStyle),
        ),
      ),
    ],
  );
}

Widget buildPasswordTF() {
  return Column(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Password',
          style: kLabelStyle,
        ),
      ),
      SizedBox(
        height: 4.0,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: kBoxDecorationStyle,
        height: 50.0,
        child: TextFormField(
            obscureText: true,
            style: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 13.0),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                hintText: 'Enter your Password',
                hintStyle: kHintTextStyle)),
      ),
    ],
  );
}

Widget buildNewAndPasswordBtn(context) {
  return Container(
    alignment: Alignment.center,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: FlatButton(
            child: Text(
              '무료 회원가입',
              style: kLabelStyle,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUp()));
            },
          ),
        ),
        Container(
          child: FlatButton(
            child: Text(
              '아이디&비밀번호 찾기',
              style: kLabelStyle,
            ),
            onPressed: () {},
          ),
        )
      ],
    ),
  );
}

Widget buildRememberMecheckbox() {
  return Container(
    height: 20.0,
    child: Row(
      children: [
        Theme(
            data: ThemeData(unselectedWidgetColor: Colors.lightBlue),
            child: Checkbox(
                value: rememberMe,
                checkColor: Colors.green,
                activeColor: Colors.blueGrey,
                onChanged: (value) {
                  rememberMe = value;
                })),
        Text(
          'Remember me',
          style: kLabelStyle,
        )
      ],
    ),
  );
}

Widget buildLoginBtn() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10.0),
    width: double.infinity,
    child: RaisedButton(
        elevation: 5.0,
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Color(0xff6ca8f1),
        child: Text(
          'LOGIN',
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.5,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'CookieRun'),
        ),
        onPressed: () {}),
  );
}

Widget buildSignInWithText() {
  return Column(
    children: [
      Text(
        'Sign in with',
        style: kLabelStyle,
      )
    ],
  );
}

Widget buildSocialBtn(Function onTap, AssetImage logo) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black54, offset: Offset(0, 2), blurRadius: 6.0)
          ],
          image: DecorationImage(
            image: logo,
          )),
    ),
  );
}

Widget buildSocialBtnRow() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildSocialBtn(() => print('Login with KaKao'),
            AssetImage('assets/logos/kakao_logo.jpg')),
        buildSocialBtn(() => print('Login with Naver'),
            AssetImage('assets/logos/naver_logo.jpg')),
        buildSocialBtn(() => print('Login with Facebook'),
            AssetImage('assets/logos/facebook.jpg')),
        buildSocialBtn(
          () => print('Login with Google'),
          AssetImage('assets/logos/google.jpg'),
        ),
      ],
    ),
  );
}

  Widget buildSingnupBtn(context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: '회원가입 없이 이용하기',
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'CookieRun'
                  ))
            ]),
          ),
    );
  }
