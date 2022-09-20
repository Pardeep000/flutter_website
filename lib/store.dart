      floatingActionButton: new Builder(builder: (context) {
					return new FloatingActionButton(
						onPressed: () {
							Scaffold.of(context).openDrawer();
						},
						child: new Icon(Icons.add),
					);
				}),

        IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          )),





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
                child: AnimatedContainer(duration: Duration(seconds: 1),
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
                          LinearGradient(colors: [Colors.white, Colors.black]),
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),





                    //
      // floatingActionButton: new Builder(builder: ((context) {
      //   return new FloatingActionButton(
      //     onPressed: () {
      //       Scaffold.of(context).openDrawer();
      //     },
      //     child: Icon(Icons.menu),
      //   );
      // })),





                      Padding(
                  padding: const EdgeInsets.only(left:40),
                  child: Container(
                    //width: (MediaQuery.of(context).size.width) / 6,
                    width: 500,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.amber),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Container(
                              width: (MediaQuery.of(context).size.width) / 4,
                              child: Expanded(
                                  child: TextField(
                                decoration: const InputDecoration(
                                    icon: Icon(Icons.mail_outline),
                                    hintText: "Enter your Email-Address",
                                    labelText: "Email-Address",
                                    border: InputBorder.none),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: customeButton(),
                          ),
                        ],
                      )),
                ),