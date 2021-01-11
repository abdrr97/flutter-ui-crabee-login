import 'package:crabee/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.ac_unit,
            color: Colors.transparent,
          ),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          margin: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FadeAnimation(
                1.2,
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF373D46),
                  ),
                ),
              ),
              FadeAnimation(
                1.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    makeInput(label: 'Phone'),
                    makeInput(label: 'Password', obscureText: true),
                  ],
                ),
              ),
              FadeAnimation(
                1.4,
                child: Container(
                  width: double.infinity,
                  height: 75.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFFB9310).withOpacity(0.6),
                        offset: Offset(0, 7.5),
                        blurRadius: 13,
                      ),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xFFFDB93F),
                        Color(0xFFFDD54B),
                      ],
                    ),
                  ),
                  child: MaterialButton(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Text(
                      'sign in'.toUpperCase(),
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              FadeAnimation(
                1.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    MaterialButton(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                          color: Color(0xFFFDB93F),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              FadeAnimation(
                1.6,
                child: Container(
                  width: 350.0,
                  child: Divider(
                    color: Colors.grey.withOpacity(.6),
                    height: 30,
                    thickness: 1.5,
                  ),
                ),
              ),
              FadeAnimation(
                1.7,
                child: Column(
                  children: [
                    Text(
                      'Or sign in with:',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueGrey.withOpacity(0.7),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 180.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            border: Border.all(
                              color: Colors.blueGrey.withOpacity(.4),
                              width: 2,
                            ),
                          ),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Image.asset(
                              'assets/images/fb.png',
                              height: 40.0,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          width: 180.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            border: Border.all(
                              color: Colors.blueGrey.withOpacity(.4),
                              width: 2,
                            ),
                          ),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Image.asset(
                              'assets/images/google.png',
                              height: 40.0,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget makeInput({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(height: 10),
      TextField(
        textInputAction: TextInputAction.done,
        cursorColor: Color(0xFFFDB93F),
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 26.0),
          labelText: label,
          labelStyle: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.w500,
            color: Colors.blueGrey[400],
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              color: Colors.blueGrey[900].withOpacity(.5),
            ),
          ),
        ),
      ),
      SizedBox(height: 20),
    ],
  );
}
