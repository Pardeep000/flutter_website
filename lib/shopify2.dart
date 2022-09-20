import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class products extends StatelessWidget {
  const products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      child: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1.48,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                color: Colors.amber,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  'assets/images/job_white.jpg',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_bag_sharp),
                  label: Text(
                    'Wear the Best',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(70, 40),
                    primary: Color.fromRGBO(158, 158, 158, 0.7),
                  ),
                ),
              )
            ],
          ), //one pic
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                color: Colors.amber,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  'assets/images/bike.jpg',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_bag_sharp),
                  label: Text(
                    'Click to take a Ride',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(70, 40),
                    primary: Color.fromRGBO(158, 158, 158, 0.7),
                  ),
                ),
              )
            ],
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                color: Colors.amber,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  'assets/images/dorsey.png',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_bag_sharp),
                  label: Text(
                    'Entreneurship-Offer',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(70, 40),
                    primary: Color.fromRGBO(158, 158, 158, 0.7),
                  ),
                ),
              )
            ],
          ),
          ///////////////////////////////////////
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                color: Colors.amber,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.network(
                  'data:image/jpeg;base64,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',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 80),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_bag_sharp),
                  label: Text(
                    'Iphones',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(70, 40),
                    primary: Color.fromRGBO(158, 158, 158, 0.7),
                  ),
                ),
              )
            ],
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                color: Colors.amber,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFVEcFTAaxtXzHFNNZorRGuwmm-kVUz3ywfw&usqp=CAU',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 80),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_bag_sharp),
                  label: Text(
                    'Wear to Run Fast',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(70, 40),
                    primary: Color.fromRGBO(158, 158, 158, 0.7),
                  ),
                ),
              )
            ],
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                color: Colors.amber,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  'assets/images/pizza.jpeg',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 80),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_bag_sharp),
                  label: Text(
                    'Fast-Food-Byte',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(70, 40),
                    primary: Color.fromRGBO(158, 158, 158, 0.7),
                  ),
                ),
              )
            ],
          ), //one pic
        ],
      ),
    );
  }
}

class contact extends StatelessWidget {
  const contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      color: Colors.blue,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            'assets/images/night_street.jpg',
            fit: BoxFit.fitWidth,
          ),
        ),
        Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 10),
              //for central text:\n
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Contact Us',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25)),
                  Text(
                      'Our happiness lies in serving the community we build, which is the only way to prosper society and move it forward.',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    margin: EdgeInsets.only(top: 25, left: 80),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 15, right: 10),
                            child: Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'Address:',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15)),
                            TextSpan(
                                text:
                                    '\n1 Apple Park Way Cupertino, California, 9501 United States',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15))
                          ])),
                        ]),
                        SizedBox(
                          height: 15,
                        ),
                        Row(children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 15, right: 10),
                            child: Icon(
                              Icons.phone,
                              color: Colors.white,
                            ),
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'Contact no.:',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15)),
                            TextSpan(
                                text: '\n0313-3065273 , 0320-648130',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15))
                          ])),
                        ]),
                        SizedBox(
                          height: 15,
                        ),
                        Row(children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 15, right: 10),
                            child: Icon(
                              Icons.mail,
                              color: Colors.white,
                            ),
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'Email-Address:',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15)),
                            TextSpan(
                                text: '\nsteven_paul1727@outlook.com',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15)),
                          ])),
                        ]),
                      ],
                    ),
                  ),
                  contact_form(),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

class contact_form extends StatefulWidget {
  const contact_form({Key? key}) : super(key: key);

  @override
  State<contact_form> createState() => _contact_formState();
}

class _contact_formState extends State<contact_form> {
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
    return Container(
      width: (MediaQuery.of(context).size.width) / 3,
      margin: EdgeInsets.only(top: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
              key: formkey,
              child: Column(
                children: [
                  Text(
                    'Drop your Message!!!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
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
                        Icons.person,
                        color: Colors.white,
                      ),
                      hintText: "Enter your name",
                      labelText: "User",
                      labelStyle:
                          TextStyle(fontSize: 15.0, color: Colors.white),
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.white),
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
                      labelStyle:
                          TextStyle(fontSize: 15.0, color: Colors.white),
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.white),
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
                        Icons.message,
                        color: Colors.white,
                      ),
                      hintText: "Type in your message",
                      labelText: "User's Message",
                      labelStyle:
                          TextStyle(fontSize: 15.0, color: Colors.white),
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Entr your message...";
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
                        "Send",
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
        ],
      ),
    );
  }
}
