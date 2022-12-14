import 'dart:html';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pkapp/shopify2.dart';

void main() {
  runApp(MaterialApp(
    title: 'social-site',
    home: commerce_site(),
    theme: ThemeData(primarySwatch: Colors.red),
    debugShowCheckedModeBanner: false,
  ));
}

class commerce_site extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  //const homeapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue, Colors.pink])),
            child: navbar(),
          ),
          preferredSize: Size(MediaQuery.of(context).size.width, 1000)),
      //extendBodyBehindAppBar: true,
      body: screen(),
    );
  }
}

class screen extends StatelessWidget {
  const screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        //width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height,
        child: GridView.count(
          crossAxisCount: 1,
          childAspectRatio: 2.5,
          shrinkWrap: true,
          mainAxisSpacing: 0,
          crossAxisSpacing: 0,
          children: [
            Stack(
              //alignment: Alignment.center,
              children: [
                Carousel(
                  boxFit: BoxFit.cover,
                  autoplay: true,
                  animationCurve: Curves.fastOutSlowIn,
                  animationDuration: Duration(milliseconds: 500),
                  //about_dot
                  dotSize: 8,
                  dotIncreaseSize: 1.5,
                  dotIncreasedColor: Colors.blue,
                  dotColor: Colors.red,
                  dotBgColor: Colors.amber,
                  dotPosition: DotPosition.bottomCenter,
                  showIndicator: true,
                  //
                  images: [
                    AssetImage('assets/images/zinger.jpg'),
                    AssetImage('assets/images/bike.jpg'),
                    AssetImage('assets/images/jobs_smile.jpg'),
                    NetworkImage(
                        'https://cdn.pixabay.com/photo/2021/10/03/04/21/woman-6676901__340.jpg'),
                    NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuZRHSwSa7RzjQRT6N8PK5T7rdoMxSaC1WlA&usqp=CAU')
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 250),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Super Sales',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Save upto 70% off',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 35),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          child: Text(
                            'Shop Now',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            products(),
            contact(),
          ],
        ),
      ),
    );
  }
}

class navbar extends StatelessWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
              text: '    Flutter\n',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            TextSpan(
              text: 'Commerce',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ])),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(250),
          child: Image(
              width: 100,
              image: NetworkImage(
                  'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQsAAAC9CAMAAACTb6i8AAABTVBMVEX///9WW27wBIDtfwb66Bp6tR0GXqVSV2tMUWYAl6BgZXbkNDbAwcZJT2RGTGJOVGj65wDb3N/j5OaAhJGytLvNztOYm6XwAHylqLHp6uzvAHXz8/TscwDR0tbv7/H5+fmOkZxscH9trwCqrLUAWKLjJig/RV25u8Gfoqskn6cAj5n2hLX98+r/+Pzn7vXuk5QAUaBpbn12eoj99rL87nL77E377Vv88pH++939+Mb760D+/On88IHl8/OFw8dYrbSez9L89au3297885780+XzUpvxLIr0ZKb4qcv97PT5tdL84e33k772grWs1tn0a6n74tD3y6v2w5j0tIHyomD87N/51rvwlETxoF37yd/uhRfB26GpznqPwEnj7tWeyGaLqs1MgLZwmMPM2unoXV6rwtv64OAcZ6r2xcXO4rTyra3iFBfrgYG11I1XiLvQCWQDAAAJVElEQVR4nO2c/3/TNhrH5RaQaiypdmwnruPYado0fG8yxrbbgN0OCoxx0G2F3cb4OtgNjvv/fzxJdmwncVq6W+LGed68KImk5PXo00ePHn0xCAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMI1Prn567bPPy7biJPDFeszVsg0pn0/WT8Ws/61sU8rmy6EUQoyvyjamZK5mWpxa/7Jsa0rg+o2bN7+OX+akOLX+91KtKoVvzp9fWzu/dh2NDJGlHCTXhRKSc+gwLS6VZd5cuRFLsXb+GzQ2Rv6RtLj13e29lZW9O3fvlWnnPDiXaLF2Q7y5lo+dcb717d5Gvb4iqNc37twv19ZZM9TivNTii9ycek3W3ru9sZJR3/iuZGtny8gYQV+luZaaUm+t1FdG2LhTsrkzJR87BZ+tryslTkkp7o8pIV3jdqnWzph4Tj13PXn7+VWhxKcqt7g0oYT0jAcl2jpzrn998+Y/iyoeTrqFFOPWvA08AdzfKJJCzK5lGzZ7Hu1/v/8oX1DsFtV3jIs/NGN+PEjLprjFSr3SEQM9bq4OaX6flN2apkW1B8l+JoUQ48e48O6UISIGSYVXJ4/yUqSecWG6FhVOxX9eHaWpYsZSarHfHNNiVY2SpdTiybgUq6shWs54EU64xWpT5hnLOI8cFGixLyum+UX9Qtkmz4xH07R4sHx551S/mLIeqfSqfTJ0NuN1SbFjVHgWQeinSTGSmkIpKr3N93hikPyQ1NybdIxqb/IVJBjhsOb+xH7nwzIN/UsJd6JahmvEpRfHosXj7AOX7mzk1KjX75Zj9wwwMcE5OKU7qvxgchJJ+dft+HykXt+oP6jOaZHPtXFYpGouPhnGjObP6d5WmBy037/7cG9v7/aFb6uUeruTWmi0Edc9/mm12WyuPkmd4pfTm5ubTyt770CflEJ4hjesPjg4uJi2/XXztGBz81kpls6eIik07hY1fa6kkIRF1YtPHxeKUdDbZ6kUmx/ikssvXr589Xq+9s6SDinSguwM6y9d+e23K2qq+JBqcfpXVfVmd0uw+6oky/96Qr0geGqanlS/3d4+e3Z7+614+fx0hnSb17tnFBUSwx8wPiQbLzSIa88miKnzaeYXp2XV72cSdis0TEy7kRClPoJrqurf72Mptt8h9EemxXOUucWZM1svSjV/RoQ5x1DT6rvtRIsr4k0qhZpU32RaVGeQ5MkyL96T71MthF+kE8nmU1n1uupaWDQLnzI+vk3GyHsZPNEzmXZubv6iml7eSuPFmzJNnh2DdJRQtWC9osR4/5+k+tmHD38MU49XQzF+L8fUmeOkjoHbquDde8GVwrYvlRhbW5fnaeA80VLHYKYqCN++nbYWfbG1u7v738pKgew0D8WDo1tffl1dJUTqlUVPUrhCWyayfEsjesM4DLNsW2eNyfLrVXIYrO0d/X0LTbtwFV8I5q2yrZ0tBj1ahNRvamVbO2MKF/FToH7Z1s4W+xiOQa2yrZ0xx4gYtOrRM9Q+Wgz96G9bcPz2Rw4TZpRt6hywOeVHOgfvNsq2cz447kA/nH5U+cQTAADgzxB03IYzerbqGz3XXr6gaWjySI1iO1fmUsq5WK0vmRrucCeDpatRX0+2APFSZFkpdrapQ4e7fe1sDcuWyDP8/GUEFi9H81sbuF+ygXPEzmuRXNTpj6xFlscxaiPLEeUEI66i8U7ZJs6NsctLcmK1RlavxZe6KsnIhg5W+xRLq0U0ooU6QwtHxkh2p6vyOPlzEhKnWyMxhFX8PCCPnnUc4zgPz58j8ahc8+ZKLjowJylrpGJgvaIXXosJcLzNx4mTljVY7C20X/GDkXH8nsYY06J8YDBrnDGq21M/VF080xsfC75lVv1QBAAAADg+LhkcJ3vqEL26ObjLmXN0q5RGt1vdHMPl9DhamBW8xme6g3ZNrr6FFoEVtWvx/nbYqbVrnXjQWI2kiWzeG7Qj2SRoqIZO1B404tRLvoyOI+dJo9flhHCq+UIL7FKCsToAsAgRixHC5ZZvJA9JMNVEeAjjZ5BYPxQLk66BWjrlhPNuZ9iMM31hc1K5CG90+pzX5KMjnLR1rp7UxRhrNbFU1+ThkEb6A47lXfka0Uh7QOR6vcOJrY4I3AHXuiYymGqmyY8sJjbhMgK2MZFaYOEGDa4RZFC1kdXG1EBMbeRYWGNmi2kypgREY77UwmdqH7TDuYv6WDUj2rGizklCbvz3AtGfUGjB1S0bTWNhxNWzdwHlkSf6K4t7nNsmjR+kqGHi2JzsWFQ9lmYxXAuFx8iq4bcsIC0uRgalA0P2It6mGGDaEn/lsPcIHiT9RQ7hrtBGPXllE7IjtTAzLbxcs7I68//i1SgVsYC10zm1prQgE1pQnGqxI0bWuBYMR7JKNFlYLRDyHbfPNRb0clpEmMrkQfbVovE5keh/I6Bxh3ucGGNatOIII5stqhZRuy8dIMLEyLRgLTse9SJGdIQW6m6viKOOI6YUubWnY2aNaYE0zGQ2MsCLqwXhA8u32mKSyGnheV2N25YIrKwltMDajlMTs4x8GA3rhjPAuC/n1BEtGgS3nSDii3uEJLqBqfhD8vGCeXKLl1CRN3TEONF0SiiW11od9ZqI18GEFqhPMKVUX1wtkNlmAml/1O3G8wjrimFj6Ix1dUPFjMghjGFDxk/esOVucBCvzcwuU0Fi0BX/hJH4RLTI84jog2UWLr79uDj+3Vvq/oUj55HQmpplW77Mu3qzsfMEkIwDhUOnd7Sty3MCDyfP+FaSj9ViR+Tn/RrFuOi/VKkIZm7PxkhCSiE1EYblcrZyuxoZoZk9OeSbhz1FZNR0vbY89xDyhFV/umqEQ7zdrLwWlrzuHDqio77vIDPyklKRd7dMT9TI7gciZPjyyZEW8mTDpLhiBDteJHKu1k6AAtdDlquuFZi254ZoEITIbdkW6piWyDFcC/k2sluo4cvi6sVLMV96oQiWgY2kb4TxnUWRRrZ81JC7vY7RkSfvEZJvhRaiRQ8FPVVcMVTuIH7l1rgWSHXecVqtEHWCljvUAvXMICmuGkaAeqFnIyPWIlHBceRA6MmbKajVQhHyxOKj5ystTLkOcWVx5XBsT/0wkSd75xhJqRXPKZ4tCrxOYMqfYiyJoiAurp5fAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJXnfyve5tR9ogHjAAAAAElFTkSuQmCC')),
        ),
        InkWell(
          onTap: () {},
          child: AnimatedContainer(
            padding: EdgeInsets.symmetric(vertical: 10),
            margin: EdgeInsets.only(left: 20),
            duration: Duration(seconds: 1),
            // decoration: BoxDecoration(
            //     color: Color.fromRGBO(128, 128, 128, 0.7),
            //     borderRadius: BorderRadius.circular(25)),
            width: 300,
            height: 70,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    hintText: 'Search here',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    fillColor: Color.fromRGBO(128, 128, 128, 0.7),
                    filled: true),
              ),
            ),
          ),
        ),
        SizedBox(width: 100),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Top Offers'),
            ),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Exclusive'),
            ),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Sales'),
            ),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Login'),
            ),
            SizedBox(
              width: 180,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_active_rounded)),
                IconButton(onPressed: () {}, icon: Icon(Icons.menu_outlined)),
              ],
            )
          ],
        )
      ],
    );
  }
}
