import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'database.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyBoYIY4V6Z_pngE1evQAKTuQc7Nue4JWNw",
    appId: "1:947254339969:web:54e012b6646ea33f0ce080",
    messagingSenderId: "947254339969",
    projectId: "flutter-with-firebase-83020",
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List dataList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue, Colors.pink])),
            child: navbar(),
          ),
          preferredSize: Size(MediaQuery.of(context).size.width, 1000)),
      //body: screen(),
      body: FutureBuilder(
        future: FireStoreDataBase().getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text(
              "Something went wrong",
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            dataList = snapshot.data as List;
            return screen(dataList: dataList);
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class navbar extends StatelessWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
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
            "Task Manager",
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline),
          ),
        ],
      ),
    );
  }
}

class screen extends StatelessWidget {
  List dataList = [];
  screen({Key? key, required this.dataList}) : super(key: key);
  TextEditingController data1 = TextEditingController();
  TextEditingController data2 = TextEditingController();
  var data11;
  var data22;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 235, 204, 111),
      margin: EdgeInsets.only(left: 250, right: 250),
      alignment: Alignment.center,
      child: Column(//mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Container(
          margin: EdgeInsets.only(left: 50, right: 50, top: 20),
          //container for form
          child: Column(
            children: [
              Text('Task Writer',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline)),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: data1,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.topic_outlined),
                    hintText: 'Topic',
                    labelText: 'Write your Topic',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: data2,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.add_task),
                    hintText: 'Task',
                    labelText: 'Type in your task',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  FireStoreDataBase().add_data(data1.text, data2.text);
                  data11 = data1.text;
                  data22 = data2.text;
                  data1.text = '';
                  data2.text = '';
                },
                icon: Icon(Icons.send),
                label: Text('Add-Task'),
                style: ElevatedButton.styleFrom(minimumSize: Size(100, 30)),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        //Text('below it'),
        Expanded(
          child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: dataList.length,
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  //key: Key(index.toString()),
                  title: Text(
                    dataList[index]['title'] ?? "name not found",
                  ),
                  subtitle: Text(
                    dataList[index]['desc'] ?? "name not found",
                  ),
                  leading: IconButton(
                      onPressed: () {
                        FireStoreDataBase()
                            .update(dataList[index]['title'], data22);
                      },
                      icon: Icon(Icons.edit)),
                  trailing: IconButton(
                      onPressed: () {
                        FireStoreDataBase().delete2(dataList[index]['title']);
                        //
                      },
                      icon: Icon(Icons.delete_forever)),
                );
              }),
        ),
      ]),
    );
  }
}
