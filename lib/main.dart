

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  mySnackBar(msg, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  myEmail(msg, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Show Message",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {
              mySnackBar("Message", context);
            },
            icon: const Icon(Icons.message),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              myEmail("Email", context);
            },
            icon: const Icon(Icons.email),
            color: Colors.white,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  accountName: Text("Muhibbul Hasan"),
                  accountEmail: Text("muhibbulhasan6@gmail.com"),
                  decoration: BoxDecoration(color: Colors.lightBlueAccent),

                )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text("Contact"),
            )
          ],
        ),
      ),
      body: Container(
        height: 250,
        width: 200,
alignment: Alignment.topCenter,
margin: const EdgeInsets.all(30),
padding: const EdgeInsets.all(40),
        decoration:  BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.black,width: 10)
        ),
        child: Center(
          child: Image.asset("assets/images/download.jpeg"),
        ),

      )
    );
  }
}
