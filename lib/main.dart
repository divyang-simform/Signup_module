import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:signup_module/SignIn.dart';
import 'package:signup_module/controlbox.dart';
import 'package:signup_module/otherloginmethod.dart';

import 'imageScr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MySignInPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool eye = false;

  void hidepassword() {
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
          width: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/image/background_image.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
    ),
          // alignment: Alignment.center,
          // child:

          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 0),
            child: Container(
              height: MediaQuery.of(context).size.height * .7,
              width: MediaQuery.of(context).size.width * .9,
              decoration: BoxDecoration(
    color: Colors.grey.shade200.withOpacity(0.5),),

    // color: Colors.yellow,
    //               color: Color.fromRGBO(255, 255, 255, 0.2)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SIGN UP",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: "san ferif",
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    child: TextField(
                      maxLength: 15,
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
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          fillColor: Color.fromRGBO(0, 0, 0, 0.3),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintText: "E-mail",
                          hintStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          prefixIcon: Icon(
                            Icons.mail_outline,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    child: TextField(
                      obscureText: eye,
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
                    height: 20,
                  ),
                  MaterialButton(
                    color: Color.fromRGBO(0, 0, 0, 0.3),
                    minWidth: MediaQuery.of(context).size.width * .8,
                    height: 55,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      FloatingActionButton(
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
                          onPressed: () {},
                          child: Image.asset(
                              "asset/image/834722_facebook_icon.png"),
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        child: Image.asset(
                            "asset/image/294709_circle_twitter_icon.png"),
                      ),
                    ],
                  ),
                ],
              ),
            // ),
        ),
          ),
    ],
      ),
      // ),
    );
  }
}
