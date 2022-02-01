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

  bool showPassword = true;

  // final alphanumeric = RegExp('r^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$');
  void vaw() {
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
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(BgImage), fit: BoxFit.cover),
              ),
              child: null),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .7,
                width: MediaQuery.of(context).size.width * .9,
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 65),
                        const Text("SIGN IN",
                            style: TextStyle(
                                color: Ktextcolor,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(height: 70),
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
                            style: TextStyle(color: Ktextcolor),
                            cursorColor: Ktextcolor,
                            decoration: InputDecoration(
                                counter: Offstage(),
                                fillColor: Ktextfeildbgcolor,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: Kbordercolor)),
                                hintText: "Your Name",
                                hintStyle: TextStyle(color: Ktextcolor),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                prefixIcon: Icon(Icons.account_circle_outlined,
                                    color: Kiconcolor)),
                          ),
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .8,
                          child: TextFormField(
                            obscureText: showPassword,
                            validator: (password) {
                              if (password == null || password.isEmpty) {
                                return "Please enter your Password.";
                              }
                              if (password.length < 8) {
                                return "enter the password more than 8 character";
                              }
                            },
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
                              prefixIcon:
                                  Icon(Icons.lock_outline, color: Kiconcolor),
                              suffixIcon: IconButton(
                                  icon: showPassword == true
                                      ? Icon(
                                          Icons.remove_red_eye_outlined,
                                          color: Kiconcolor,
                                        )
                                      : Icon(
                                          Icons.remove_red_eye,
                                          color: Kiconcolor,
                                        ),
                                  onPressed: vaw),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MyforgotPasspage()));
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    right:
                                        MediaQuery.of(context).size.width * .1),
                                child: const Text(
                                  "Forgot Password",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Ktextcolor),
                                ),
                              ),
                            ),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MyHomePage()),
                                  );
                                },
                                child: const Text(
                                  "Create a New Account",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Ktextcolor),
                                )),
                          ],
                        ),
                        SizedBox(height: 20),
                        MaterialButton(
                          color: Ktextfeildbgcolor,
                          minWidth: MediaQuery.of(context).size.width * .8,
                          height: 55,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // Process data.
                            }
                          },
                          child: Text("Sign In",
                              style: TextStyle(color: Ktextcolor)),
                        ),
                        SizedBox(height: 70),
                        Otherloginpage(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
