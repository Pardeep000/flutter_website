import 'package:flutter/material.dart';

import 'package:pkapp/sign-up_page_desktop.dart';

import 'package:pkapp/desktop_login_page.dart';
import 'package:pkapp/task_manager.dart';

void main() {
  runApp(MaterialApp(
    title: "Log-in Page(Welcome!)",
    home: navbar(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.red),
  ));
}

class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  bool decision1 = false;
  bool decision2 = false;
  bool decision3 = false;
  bool decision4 = false;
  bool decision5 = false;
  bool decision6 = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
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
          Row(
            //second row in row
            children: [
              InkWell(
                onHover: (value) {
                  setState(() {
                    //value ? decision3 = true : decision3 = false;
                    if (value) {
                      decision4 = true;
                    } else {
                      decision4 = false;
                    }
                  });
                },
                onTap: (() async {
                  setState(() {
                    if (decision1 == true) {
                      decision1 = false;
                    } else {
                      decision1 = true;
                    }
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => MyHomePage())));
                }),
                splashColor: Colors.purple,
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  child: Text(
                    "Tasking",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: decision1 ? 13 : 18,
                      color: decision4 ? Colors.white : Colors.black,
                    ),
                  ),
                  height: 40,
                  width: decision1 ? 60 : 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.black, Colors.white]),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    //value ? decision3 = true : decision3 = false;
                    if (value) {
                      decision3 = true;
                    } else {
                      decision3 = false;
                    }
                  });
                },
                onTap: (() async {
                  setState(() {
                    if (decision2 == true) {
                      decision2 = false;
                    } else {
                      decision2 = true;
                    }
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => login())));
                }),
                splashColor: Colors.purple,
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  child: Text(
                    "Log-In",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: decision2 ? 13 : 18,
                      color: decision3 ? Colors.white : Colors.black,
                    ),
                  ),
                  height: 40,
                  width: decision2 ? 70 : 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.black, Colors.white]),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(
                width: 70,
              ),
            ],
          ),
          //Text('data')
          Row(
            //mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onHover: (value) {
                  setState(() {
                    //value ? decision3 = true : decision3 = false;
                    if (value) {
                      decision5 = true;
                    } else {
                      decision5 = false;
                    }
                  });
                },
                onTap: (() async {
                  setState(() {
                    if (decision6 == true) {
                      decision6 = false;
                    } else {
                      decision6 = true;
                    }
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signup_page()));
                }),
                splashColor: Colors.purple,
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: decision6 ? 15 : 20,
                      color: decision5 ? Colors.black : Colors.white,
                    ),
                  ),
                  height: 50,
                  width: decision6 ? 80 : 130,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.orangeAccent, Colors.black]),
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              SizedBox(
                width: 70,
              ),
              MaterialButton(
                onPressed: () {},
                child: Icon(
                  Icons.search,
                  size: 20,
                  color: Colors.white,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Colors.black,
                splashColor: Colors.purple,
              ),
              SizedBox(
                width: 20,
              ),
              MaterialButton(
                onPressed: () {},
                child: Icon(
                  Icons.more_vert,
                  size: 20,
                ),
                splashColor: Colors.purpleAccent,
                minWidth: 1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
