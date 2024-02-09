// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: HomePage(),
    ); // MaterialApp
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(149, 228, 226, 221),
        title: Text(
          "User Profile",
          style: TextStyle(color: Color(0xFF292929)),
        ),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: SizedBox(
              height: 200,
              width: 150,
              child: CircleAvatar(
                backgroundImage: AssetImage("images/profilePic.jpg"),
                radius: 100,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(45,20,45,5),
            child: Container(
              height: 70,
              width: 330,
              decoration: BoxDecoration(
                  color: Color(0xFFE4E2DD),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                title: Text("Name", 
                    style: TextStyle(color: Color(0xFF292929)),),
                subtitle: Text("Shdn Alomar",
                    style: TextStyle(color: Color(0xFF292929)),),
                leading: Icon(Icons.person, color: Color(0xFF292929)),
                trailing: Icon(Icons.arrow_forward_sharp, color: Color(0xFF292929))
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(45,5,45,5),
            child: Container(
              height: 70,
              width: 330,
              decoration: BoxDecoration(
                  color: Color(0xFFE4E2DD),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                title: Text("Phone number", 
                    style: TextStyle(color: Color(0xFF292929)),),
                subtitle: Text("05555555555",
                    style: TextStyle(color: Color(0xFF292929)),),
                leading: Icon(Icons.phone, color: Color(0xFF292929)),
                trailing: Icon(Icons.arrow_forward_sharp, color: Color(0xFF292929))
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(45,5,45,5),
            child: Container(
              height: 70,
              width: 330,
              decoration: BoxDecoration(
                  color: Color(0xFFE4E2DD),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                title: Text("Address", 
                    style: TextStyle(color: Color(0xFF292929)),),
                subtitle: Text("َQassim",
                    style: TextStyle(color: Color(0xFF292929)),),
                leading: Icon(Icons.location_pin, color: Color(0xFF292929)),
                trailing: Icon(Icons.arrow_forward_sharp, color: Color(0xFF292929))
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(45,5,45,5),
            child: Container(
              height: 70,
              width: 330,
              decoration: BoxDecoration(
                  color: Color(0xFFE4E2DD),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                title: Text("ُE-mail", 
                    style: TextStyle(color: Color(0xFF292929)),),
                subtitle: Text("shdn.ab.alomar@gmail.com",
                    style: TextStyle(color: Color(0xFF292929)),),
                leading: Icon(Icons.email, color: Color(0xFF292929)),
                trailing: Icon(Icons.arrow_forward_sharp, color: Color(0xFF292929))
              ),
            ),
          ),
        ],
      ),
    );
  }
}
