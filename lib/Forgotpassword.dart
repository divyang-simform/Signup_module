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
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(BgImage), fit: BoxFit.cover),
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
                        const SizedBox(height: 70),
                        const Text("Forgot Password",
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
                                counter: const Offstage(),
                                fillColor: Ktextfeildbgcolor,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        const BorderSide(color: Kbordercolor)),
                                hintText: "Your Name",
                                hintStyle: const TextStyle(color: Ktextcolor),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                prefixIcon: const Icon(
                                    Icons.account_circle_outlined,
                                    color: Kiconcolor)),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .8,
                          child: TextFormField(
                            controller: Password,
                            obscureText: showPassword,
                            validator: (password) {
                              if (password == null || password.isEmpty) {
                                return "Please enter your Password.";
                              }
                              if (password.length < 8) {
                                return "enter the password more than 8 character";
                              }
                            },
                            style: const TextStyle(color: Ktextcolor),
                            cursorColor: Ktextcolor,
                            decoration: InputDecoration(
                              fillColor: Ktextfeildbgcolor,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                      const BorderSide(color: Kbordercolor)),
                              hintText: "New Password",
                              hintStyle: const TextStyle(color: Ktextcolor),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              prefixIcon: const Icon(Icons.lock_outline,
                                  color: Kiconcolor),
                              suffixIcon: IconButton(
                                icon: showPassword == true
                                    ? const Icon(Icons.remove_red_eye_outlined,
                                        color: Kiconcolor)
                                    : const Icon(Icons.remove_red_eye,
                                        color: Kiconcolor),
                                onPressed: Hidepassword,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .8,
                          child: TextFormField(
                            obscureText: showPassword1,
                            validator: (password1) {
                              if (password1 == null || password1.isEmpty) {
                                return "Please enter your Password.";
                              }
                              if (password1.length < 8) {
                                return "enter the password more than 8 character";
                              }
                              if (password1 != Password.text) {
                                return "both the the Password is not same";
                              }
                            },
                            style: const TextStyle(color: Ktextcolor),
                            cursorColor: Ktextcolor,
                            decoration: InputDecoration(
                              fillColor: Ktextfeildbgcolor,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Kbordercolor)),
                              hintText: "New Password",
                              hintStyle: const TextStyle(color: Ktextcolor),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              prefixIcon: const Icon(Icons.lock_outline,
                                  color: Kiconcolor),
                              suffixIcon: IconButton(
                                  icon: showPassword1 == true
                                      ? const Icon(
                                          Icons.remove_red_eye_outlined,
                                          color: Kiconcolor)
                                      : const Icon(Icons.remove_red_eye,
                                          color: Kiconcolor),
                                  onPressed: Hidepassword1),
                            ),
                          ),
                        ),
                        const SizedBox(height: 28),
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
                          child: Text("Change Password",
                              style: TextStyle(color: Ktextcolor)),
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
