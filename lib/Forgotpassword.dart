import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:signup_module/main.dart';

class MyforgotPasspage extends StatefulWidget {
  const MyforgotPasspage({Key? key}) : super(key: key);

  @override
  _MyforgotPasspageState createState() => _MyforgotPasspageState();
}

class _MyforgotPasspageState extends State<MyforgotPasspage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();
  bool eye = true;
  bool ey = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {});
  }

  void va() {
    setState(() {
      ey = !ey;
    });
  }

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
          ),
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
                        SizedBox(
                          height: 70,
                        ),
                        Text(
                          "Forgot Password",
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
                            controller: controller,
                            obscureText: ey,
                            validator: (password) {
                              if (password == null || password.isEmpty) {
                                return "Please enter your Password.";
                              }
                              if (password.length < 8) {
                                return "enter the password more than 8 character";
                              }
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
                              hintText: "New Password",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Colors.white,
                              ),
                              suffixIcon: IconButton(
                                icon: ey == true
                                    ? Icon(
                                        Icons.remove_red_eye_outlined,
                                        color: Colors.white,
                                      )
                                    : Icon(
                                        Icons.remove_red_eye,
                                        color: Colors.white,
                                      ),
                                onPressed: va,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .8,
                          child: TextFormField(
                            obscureText: eye,
                            validator: (Cpassword) {
                              if (Cpassword == null || Cpassword.isEmpty) {
                                return "Please enter your Password.";
                              }
                              if (Cpassword.length < 8) {
                                return "enter the password more than 8 character";
                              }
                              if (Cpassword != controller.text) {
                                return "both the the Password is not same";
                              }
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
                              hintText: "New Password",
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
                        SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          minWidth: MediaQuery.of(context).size.width * .8,
                          height: 55,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              // Process data.
                            }
                          },
                          child: Text(
                            "Change Password",
                            style: TextStyle(color: Colors.white),
                          ),
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
    // ),
  }
}
