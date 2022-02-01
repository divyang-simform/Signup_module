import 'dart:ui';

import 'package:flutter/material.dart';
import 'SignIn.dart';
import 'controlbox.dart';
import 'otherloginmethod.dart';

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
        home: const MySignInPage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool showPassword = false;

  void hidepassword() {
    setState(() {
      showPassword = !showPassword;
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
                  image: AssetImage(BgImage), fit: BoxFit.cover),
            ),
          ),
          // alignment: Alignment.center,
          // child:

          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 0),
            child: Container(
              height: MediaQuery.of(context).size.height * .7,
              width: MediaQuery.of(context).size.width * .9,
              decoration:
                  BoxDecoration(color: Colors.grey.shade200.withOpacity(0.5)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("SIGN UP",
                      style: TextStyle(
                          color: Ktextcolor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 40),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    child: TextField(
                      maxLength: 15,
                      style: TextStyle(color: Ktextcolor),
                      cursorColor: Ktextcolor,
                      decoration: InputDecoration(
                        counter: Offstage(),
                        fillColor: Ktextfeildbgcolor,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Kbordercolor)),
                        hintText: "Your Name",
                        hintStyle: TextStyle(color: Ktextcolor),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        prefixIcon: Icon(Icons.account_circle_outlined,
                            color: Kiconcolor),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Ktextcolor),
                      cursorColor: Ktextcolor,
                      decoration: InputDecoration(
                        fillColor: Ktextfeildbgcolor,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Kbordercolor)),
                        hintText: "E-mail",
                        hintStyle: TextStyle(color: Ktextcolor),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        prefixIcon: Icon(Icons.mail_outline, color: Kiconcolor),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    child: TextField(
                      obscureText: showPassword,
                      style: TextStyle(color: Ktextcolor),
                      cursorColor: Ktextcolor,
                      decoration: InputDecoration(
                        fillColor: Ktextfeildbgcolor,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Kbordercolor)),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Ktextcolor),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        prefixIcon: Icon(Icons.lock_outline, color: Kiconcolor),
                        suffixIcon: IconButton(
                            icon: showPassword == true
                                ? Icon(Icons.remove_red_eye_outlined,
                                    color: Kiconcolor)
                                : Icon(Icons.remove_red_eye, color: Kiconcolor),
                            onPressed: hidepassword),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  MaterialButton(
                    color: Ktextfeildbgcolor,
                    minWidth: MediaQuery.of(context).size.width * .8,
                    height: 55,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    onPressed: () {},
                    child: Text("Sign Up", style: TextStyle(color: Ktextcolor)),
                  ),
                  SizedBox(height: 40),
                  Otherloginpage(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
