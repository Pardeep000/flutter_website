import 'dart:html';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'desktop_login_page.dart';
import 'mobile_login_page.dart';
import 'signup_mobile_versions.dart';

void main() {
  runApp(MaterialApp(
    title: "Sign-up Page(Welcome!)",
    home: signup_page(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.red),
  ));
}

class signup_page extends StatelessWidget {
  const signup_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: PreferredSize(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.blue, Colors.pink])),
              child: signup__navbar_versions(),
            ),
            preferredSize: Size(MediaQuery.of(context).size.width, 1000)),
        body: signup_landingpage_versions(),
      ),
    );
  }
}

//choosgin navbar versions between two screens (desktop and mobile)
class signup__navbar_versions extends StatelessWidget {
  const signup__navbar_versions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth < 852) {
          return signup__navbar_mobile();
        } else {
          return signup__navbar_desktop();
        }
      }),
    );
  }
}

//choosgin landingpage versions between two screens (desktop and mobile)
class signup_landingpage_versions extends StatelessWidget {
  const signup_landingpage_versions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth < 852) {
          return signup__landingpage_mobile();
        } else {
          return signup__landingpage_desktop();
        }
      }),
    );
  }
}

//signup__navbar_desktop
class signup__navbar_desktop extends StatelessWidget {
  const signup__navbar_desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Welcome to Flutter---",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            //CircleAvatar(backgroundImage: AssetImage('assets/images/logo.png'),),
            SizedBox(
              width: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image(image: AssetImage('assets/images/logo.png')),
            ),
            SizedBox(
              width: 150,
            ),
            Text(
              "Welcome to SignUp-Page!!!",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  decoration: TextDecoration.underline),
            ),
          ],
        ),
      ),
    );
  }
}

class signup__landingpage_desktop extends StatefulWidget {
  const signup__landingpage_desktop({Key? key}) : super(key: key);

  @override
  State<signup__landingpage_desktop> createState() =>
      _signup__landingpage_desktopState();
}

class _signup__landingpage_desktopState
    extends State<signup__landingpage_desktop> {
  //
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  void validate() {
    if (formkey.currentState!.validate()) {
      print("wonderful");
      // Navigator.push(context,
      //     MaterialPageRoute(builder: (context) => login_mobile_version()));
    } else {
      //print("N");
    }
  }
  //

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: ColorFiltered(
            colorFilter: const ColorFilter.mode(
              Colors.black54,
              BlendMode.darken,
            ),
            child: Image.asset(
              'assets/images/dorsey.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            // image: DecorationImage(
            //   image: AssetImage('assets/images/dorsey.png'),
            //   fit: BoxFit.fitHeight,//colorFilter: ColorFilter.mode(color:Colors.black54, BlendMode.darken),
            // ),
            gradient: LinearGradient(colors: [
              Colors.red,
              Colors.purple,
              Colors.orange,
              Colors.white
            ]),
          ),
        ), //for background image
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 450, vertical: 20),
          //padding: const EdgeInsets.symmetric(horizontal: 450,vertical:100),
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                width: (MediaQuery.of(context).size.width) / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'data:image/jpeg;base64,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'),
                      radius: 50,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Form(
                        key: formkey,
                        child: Column(
                          children: [
                            TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                fillColor: Color.fromRGBO(128, 128, 128, 0.5),
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                hintText: "Enter your name",
                                labelText: "User",
                                labelStyle: TextStyle(
                                    fontSize: 15.0, color: Colors.white),
                                hintStyle: TextStyle(
                                    fontSize: 15.0, color: Colors.white),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "please enter your name";
                                } else {
                                  return null;
                                }
                              },
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                fillColor: Color.fromRGBO(128, 128, 128, 0.5),
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                prefixIcon: Icon(
                                  Icons.mail_outline,
                                  color: Colors.white,
                                ),
                                hintText: "Enter your Email-Address",
                                labelText: "Email",
                                labelStyle: TextStyle(
                                    fontSize: 15.0, color: Colors.white),
                                hintStyle: TextStyle(
                                    fontSize: 15.0, color: Colors.white),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "please enter your Email-Address";
                                } else {
                                  return null;
                                }
                              },
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                fillColor: Color.fromRGBO(128, 128, 128, 0.5),
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),
                                hintText: "Enter your Password",
                                labelText: "Password",
                                labelStyle: TextStyle(
                                    fontSize: 15.0, color: Colors.white),
                                hintStyle: TextStyle(
                                    fontSize: 15.0, color: Colors.white),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "please enter your Password";
                                } else {
                                  return null;
                                }
                              },
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                fillColor: Color.fromRGBO(128, 128, 128, 0.5),
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),
                                hintText: "Confirm your Password",
                                labelText: "Confirm Password",
                                labelStyle: TextStyle(
                                    fontSize: 15.0, color: Colors.white),
                                hintStyle: TextStyle(
                                    fontSize: 15.0, color: Colors.white),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "please confirm your password";
                                } else {
                                  return null;
                                }
                              },
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            InkWell(
                              onTap: validate,
                              splashColor: Colors.purple,
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                height: 40,
                                width: 250,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 63, 52, 223),
                                    borderRadius: BorderRadius.circular(25)),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => login()));
                          },
                          splashColor: Colors.purple,
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Color.fromARGB(255, 63, 52, 223),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
