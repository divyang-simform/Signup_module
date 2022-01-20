import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:signup_module/SignIn.dart';

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
            decoration:const  BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/image/background_image.jpeg"),
                fit: BoxFit.cover,
              ),
            ),),
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * .7,
                  width: MediaQuery.of(context).size.width * .9,
                  child: Form(
                    key: formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 65,
                          ),
                          const Text(
                            "SIGN UP",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: "san serf",
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .8,
                            child: TextFormField(
                              validator: (newname) {
                                if (newname == null || newname.isEmpty) {
                                  return "Please enter your Name.";
                                }
                              },
                              maxLength: 15,
                              style:const  TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                  counter:const  Offstage(),
                                  fillColor:const  Color.fromRGBO(0, 0, 0, 0.3),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:const  BorderSide(color: Colors.white),
                                  ),
                                  hintText: "Your Name",
                                  hintStyle:const  TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  prefixIcon:const  Icon(
                                    Icons.account_circle_outlined,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .8,
                            child: TextFormField(
                              validator: (email) {
                                if (email == null || email.isEmpty) {
                                  return "Please enter your E-mail Address.";
                                }
                              },
                              keyboardType: TextInputType.emailAddress,
                              style:const  TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                  fillColor:const  Color.fromRGBO(0, 0, 0, 0.3),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:const  BorderSide(color: Colors.white),
                                  ),
                                  hintText: "E-mail",
                                  hintStyle:const  TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  prefixIcon:const  Icon(
                                    Icons.mail_outline,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .8,
                            child: TextFormField(
                              validator: (newpassword) {
                                if (newpassword == null || newpassword.isEmpty) {
                                  return "Please enter your Name.";
                                }
                                if (newpassword.length < 8) {
                                  return "enter the password more than 8 character";
                                }
                              },
                              obscureText: eye,
                              style:const  TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                fillColor:const  Color.fromRGBO(0, 0, 0, 0.3),
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:const  BorderSide(color: Colors.white),
                                ),
                                hintText: "Password",
                                hintStyle:const  TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                prefixIcon: const Icon(
                                  Icons.lock_outline,
                                  color: Colors.white,
                                ),
                                suffixIcon: IconButton(
                                  icon: eye == true
                                      ? const Icon(
                                          Icons.remove_red_eye_outlined,
                                          color: Colors.white,
                                        )
                                      : const Icon(
                                          Icons.remove_red_eye,
                                          color: Colors.white,
                                        ),
                                  onPressed: vaw,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          MaterialButton(
                            color:const Color.fromRGBO(0, 0, 0, 0.3),
                            minWidth: MediaQuery.of(context).size.width * .8,
                            height: 55,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20.0))),
                            onPressed: () {},
                            child:const Text(
                              "Sign Up",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              FloatingActionButton(
                                heroTag: '6',
                                onPressed: () {},
                                child: Image.asset(
                                    "asset/image/Google_Plus_icon_(2015-2019).svg.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                ),
                                child: FloatingActionButton(
                                  heroTag: '5',
                                  onPressed: () {},
                                  child:
                                      Image.asset("asset/image/834722_facebook_icon.png"),
                                ),
                              ),
                              FloatingActionButton(
                                heroTag: '4',
                                onPressed: () {},
                                child: Image.asset(
                                    "asset/image/294709_circle_twitter_icon.png"),
                              ),
                            ],
                          ),
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
