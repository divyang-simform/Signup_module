import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:signup_module/Forgotpassword.dart';
import 'package:signup_module/main.dart';

class MySignInPage extends StatefulWidget {
  const MySignInPage({Key? key}) : super(key: key);

  @override
  _MySignInPageState createState() => _MySignInPageState();
}

class _MySignInPageState extends State<MySignInPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool eye = true;
  // final alphanumeric = RegExp('r^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$');
  void vaw() {
    setState(() {
      eye = !eye;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/image/background_image.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.center,
    ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
              child: Container(
                height: MediaQuery.of(context).size.height * .7,
                width: MediaQuery.of(context).size.width * .9,
                decoration: BoxDecoration(
                    // color: Colors.yellow,
                    color: Color.fromRGBO(255, 255, 255, 0.2)),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "SIGN IN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: "san ferif",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .8,
                        child: TextFormField(
                          maxLength: 15,
                          validator: (name) {
                            if (name == null || name.isEmpty) {
                              return "Please enter your Name.";
                            }
                            return null;
                          },
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                              counter: Offstage(),
                              fillColor: Color.fromRGBO(0, 0, 0, 0.3),
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              hintText: "Your Name",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              prefixIcon: Icon(
                                Icons.account_circle_outlined,
                                color: Colors.white,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .8,
                        child: TextFormField(
                          obscureText: eye,
                          validator: (password) {
                            if (password == null || password.isEmpty) {
                              return "Please enter your Password.";
                            }
                            if (password.length < 8) {
                              return "enter the password more than 8 character";
                            }
                            // if( alphanumeric.hasMatch(password)){
                            //   return "invalid password";
                            // }
                          },
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            fillColor: Color.fromRGBO(0, 0, 0, 0.3),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.white,
                            ),
                            suffixIcon: IconButton(
                              icon: eye == true
                                  ? Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Colors.white,
                                    )
                                  : Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.white,
                                    ),
                              onPressed: vaw,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context) => const MyforgotPasspage()));},
                            child: Text(
                              "Forgot Password",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .13,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MyHomePage()),
                                );
                              },
                              child: Text(
                                "Create a New Account",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        color: Color.fromRGBO(0, 0, 0, 0.3),
                        minWidth: MediaQuery.of(context).size.width * .8,
                        height: 55,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Process data.
                          }
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          FloatingActionButton(
                            heroTag: '1',
                            onPressed: () {},
                            child: Image.asset(
                                "asset/image/Google_Plus_icon_(2015-2019).svg.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: FloatingActionButton(
                              heroTag: '2',
                              onPressed: () {},
                              child:
                                  Image.asset("asset/image/834722_facebook_icon.png"),
                            ),
                          ),
                          FloatingActionButton(
                            heroTag: '3',
                            onPressed: () {},
                            child: Image.asset(
                                "asset/image/294709_circle_twitter_icon.png"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              // ),
          ),
            ),],
        ),
      // ),
    );
  }
}
