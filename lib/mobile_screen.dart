import 'package:flutter/material.dart';
import 'package:pkapp/desktop_screen.dart';

class mobile_screen extends StatelessWidget {
  const mobile_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 245, 231, 179),
      child: Row(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Because it's gotta be change!!!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Entrepreneurship is all about ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                        TextSpan(
                            text: "\ngiving ideas life",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                fontStyle: FontStyle.italic,
                                color: Color.fromARGB(255, 216, 72, 15))),
                        TextSpan(
                            text: " and in every way ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                        TextSpan(
                            text: "\npushing world forward...",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                fontStyle: FontStyle.italic,
                                color: Color.fromARGB(255, 216, 72, 15))),
                      ])),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width) / 2,
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
              ],
            ),
          ),
          Container(
            width: (MediaQuery.of(context).size.width) / (2.5),
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: ClipRRect(
              borderRadius:BorderRadius.circular(50),
              child: Image(
                image: AssetImage('assets/images/job_white.jpg'),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
