import 'dart:html';

import 'package:flutter/material.dart';
import 'package:pkapp/commerce_main.dart';

class desktop_screen extends StatefulWidget {
  const desktop_screen({Key? key}) : super(key: key);

  @override
  State<desktop_screen> createState() => _desktop_screenState();
}

class _desktop_screenState extends State<desktop_screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 245, 231, 179),
      //color: Colors.white,
      child: Row(
        children: [
          Container(
            width: (MediaQuery.of(context).size.width) / 2,
            //padding: EdgeInsets.symmetric(horizontal: 40),
            //alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 120),
                  child: Text(
                    "Because it's gotta be change!!!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Entrepreneurship is all about ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                  TextSpan(
                      text: "\ngiving ideas life",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 216, 72, 15))),
                  TextSpan(
                      text: " and in every way ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                  TextSpan(
                      text: "\npushing world forward...",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 216, 72, 15))),
                ])),
                SizedBox(
                  height: 30,
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 120),
                    child: Text(
                        "Site for reading about one of the greatest entrepreneurs of the \nSilicon Valley...")),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width) / 3,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.amber),
                  child: Row(
                    children: [
                      Flexible(
                        child: TextFormField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.mail_outline),
                            hintText: "Enter your Email-Address",
                            labelText: "Email-Address",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      customeButton(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Row(
                    children: [
                      bottom_text(
                          maintext: "15k+",
                          secondarytext:
                              "Tablets/Ipods and more \nand much net-worth"),
                      SizedBox(
                        width: 20,
                      ),
                      bottom_text(
                          maintext: "20k+",
                          secondarytext: "Iphones 2007 \nand much net-worth"),
                      SizedBox(
                        width: 20,
                      ),
                      bottom_text(
                          maintext: "20k+",
                          secondarytext: "Onwards 2011, It's \nbeen Valuable"),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: (MediaQuery.of(context).size.width) / 2,
            padding: EdgeInsets.symmetric(horizontal: 12),
            // child: Image(
            //   image: AssetImage('assets/images/jobs_smile.jpg'),
            //   fit: BoxFit.contain,
            // ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image(
                  image: NetworkImage(
                      'https://photos5.appleinsider.com/gallery/product_pages/189-hero.jpg?=1649538349')),
            ),
          ),
        ],
      ),
    );
  }
}

class customeButton extends StatefulWidget {
  const customeButton({Key? key}) : super(key: key);

  @override
  State<customeButton> createState() => _customeButtonState();
}

class _customeButtonState extends State<customeButton> {
  bool decision10 = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => commerce_site())));
        });
      },
      onHover: (value) {
        setState(() {
          if (value) {
            decision10 = true;
          } else {
            decision10 = false;
          }
        });
      },
      child: AnimatedContainer(
          duration: Duration(seconds: 1),
          alignment: Alignment.center,
          child: Text(
            "Get Started",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: decision10 ? Colors.white : Colors.black),
          ),
          height: 30,
          width: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient:
                  LinearGradient(colors: [Colors.blueAccent, Colors.purple]))),
    );
  }
}

class bottom_text extends StatelessWidget {
  final String maintext;
  final String secondarytext;

  const bottom_text(
      {Key? key, required this.maintext, required this.secondarytext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: "$maintext \n",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
        TextSpan(
            text: "$secondarytext \n",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
      ]),
    );
  }
}
