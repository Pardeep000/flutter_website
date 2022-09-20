import 'package:flutter/material.dart';
import 'package:pkapp/sign-up_page_desktop.dart';
import 'mobile_login_page.dart';

void main() {
  runApp(MaterialApp(
    title: "Log-in Page(Welcome!)",
    home: login(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.red),
  ));
}

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: PreferredSize(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.blue, Colors.pink])),
              child: login_versions(),
            ),
            preferredSize: Size(MediaQuery.of(context).size.width, 1000)),
        body: login_body_versions(),
      ),
    );
  }
}

//choosgin navbar versions between two screens (desktop and mobile)
class login_versions extends StatelessWidget {
  const login_versions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth < 852) {
          return login_mobile_version();
        } else {
          return login_desktop_version();
        }
      }),
    );
  }
}

//choosing landing-page versions between two screens (desktop and mobile)
class login_body_versions extends StatelessWidget {
  const login_body_versions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth < 852) {
          return login_landing_page_mobile();
        } else {
          return login_landing_page_desktop();
        }
      }),
    );
  }
}

//login_page_navbar of the desktop
class login_desktop_version extends StatelessWidget {
  const login_desktop_version({Key? key}) : super(key: key);

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
              "Welcome to Login-Page!!!",
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

//login_page landing-page of the desktop
class login_landing_page_desktop extends StatefulWidget {
  const login_landing_page_desktop({Key? key}) : super(key: key);

  @override
  State<login_landing_page_desktop> createState() =>
      _login_landing_page_desktopState();
}

class _login_landing_page_desktopState
    extends State<login_landing_page_desktop> {
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

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'data:image/png;base64,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')),
          color: Color.fromARGB(213, 206, 200, 200)
          //gradient: LinearGradient(colors: [Colors.purple,Colors.pink,Colors.blue])
          ),
      child: Container(
        child: Row(
          children: [
            //container for Writing
            Container(
              width: (MediaQuery.of(context).size.width) / 2,
              padding: EdgeInsets.only(right: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 70),
                    child: Text(
                      "flutter",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Color.fromARGB(255, 17, 134, 230),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Flutter helps you connect and share ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30)),
                    TextSpan(
                        text: "\nwith the people in your life.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        )),
                  ])),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            //container for login-form
            Container(
              width: (MediaQuery.of(context).size.width) / 2.3,
              padding: EdgeInsets.only(left: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(120, 70, 0, 30),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    color: Colors.white,
                    child: Form(
                      key: formkey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Enter your Email-Address",
                                labelText: "Email-Address",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "please enter email-address";
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Enter your Password",
                                labelText: "Password",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "please enter password";
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: validate,
                            splashColor: Colors.purple,
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              child: Text(
                                "Log In",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              height: 50,
                              width: 380,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 17, 134, 230),
                                  // gradient: LinearGradient(
                                  //     colors: [Colors.blue, Colors.white]),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          InkWell(
                            onTap: () {},
                            splashColor: Colors.purple,
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              child: Text(
                                "Forgotten Password?",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                ),
                              ),
                              height: 50,
                              width: 380,
                              alignment: Alignment.center,
                              //decoration: BoxDecoration(),
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                            height: 20,
                            thickness: 0.5,
                            //indent: 25,
                            //endIndent: 25,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => signup_page()));
                            },
                            splashColor: Colors.purple,
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              child: Text(
                                "Create New Account",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              height: 50,
                              width: 200,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 38, 192, 44),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width) / 2.5,
                      padding: EdgeInsets.only(left: 160),
                      alignment: Alignment.topCenter,
                      //color: Colors.amberAccent,
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Create a Page",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: " for a celebrity, brand or business.",
                            style: TextStyle(color: Colors.black))
                      ]))),
                ],
              ),
            ),
          ],
        ),
      ), //,fit: BoxFit.contain
    );
  }
}
