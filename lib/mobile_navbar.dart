import 'package:flutter/material.dart';
import 'package:pkapp/sign-up_page_desktop.dart';

import 'desktop_login_page.dart';

class menu_bar extends StatefulWidget {
  const menu_bar({Key? key}) : super(key: key);

  @override
  State<menu_bar> createState() => _menu_barState();
}

class _menu_barState extends State<menu_bar> {
  @override
  Widget build(BuildContext context) {
    bool decision = false;

    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Container(
          color: Color.fromARGB(255, 245, 231, 179),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onHover: (value) {
                  setState(() {
                    //value ? decision1 = true : decision1 = false;
                    if (value) {
                      decision = true;
                    } else {
                      decision = false;
                    }
                  });
                },
                onTap: () {},
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  alignment: Alignment.center,
                  height: 50,
                  width: 100,
                  child: Text(
                    "Pricing",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: decision ? Colors.purple : Colors.red),
                  ),
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.black, Colors.white]),
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    //value ? decision1 = true : decision1 = false;
                    if (value) {
                      decision = true;
                    } else {
                      decision = false;
                    }
                  });
                },
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => login()));
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  alignment: Alignment.center,
                  height: 50,
                  width: 100,
                  child: Text(
                    "Log In",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: decision ? Colors.purple : Colors.red),
                  ),
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.black, Colors.white]),
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    //value ? decision1 = true : decision1 = false;
                    if (value) {
                      decision = true;
                    } else {
                      decision = false;
                    }
                  });
                },
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signup_page()));
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  alignment: Alignment.center,
                  height: 50,
                  width: 100,
                  child: Text(
                    "Register",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: decision ? Colors.purple : Colors.red),
                  ),
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.black, Colors.white]),
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              // Container(
              //   alignment: Alignment.bottomCenter,
              //   child: Text("CopyRight 2022 | Flutter-Community"),
              // )
              Expanded(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Text("CopyRight 2022 | Flutter-Community"),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class mobile_navbar extends StatelessWidget {
  const mobile_navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 150),
            child: Row(
              //first row in row
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
