import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Log_Page(Welcome!)",
    home: form_page(),
    debugShowCheckedModeBanner: false,
  ));
}

class form_page extends StatelessWidget {
  const form_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("form_page"),
      ),
    );
  }
}
