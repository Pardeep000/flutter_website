import 'package:flutter/material.dart';
import 'package:pkapp/sign-up_page_desktop.dart';
import 'desktop_login_page.dart';

//navbar version of login page for mobile

class login_mobile_version extends StatelessWidget {
  const login_mobile_version({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //first row in row
            children: [
              Text(
                "Welcome to Flutter---",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image(image: AssetImage('assets/images/logo.png')),
              ),
              SizedBox(width: 20),
              Text(
                "Welcome to Login-Page!!!",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//landing page version of login page for mobile
class login_landing_page_mobile extends StatefulWidget {
  const login_landing_page_mobile({Key? key}) : super(key: key);

  @override
  State<login_landing_page_mobile> createState() =>
      _login_landing_page_mobileState();
}

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

class _login_landing_page_mobileState extends State<login_landing_page_mobile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "flutter",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Color.fromARGB(255, 17, 134, 230),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Flutter helps you connect and share ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
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
            /////////////////
            //container for login-form
            Container(
              width: (MediaQuery.of(context).size.width) / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Form(
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
                  //bottom text
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Create a Page",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: " for a celebrity, brand or business.",
                        style: TextStyle(color: Colors.black))
                  ]))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
