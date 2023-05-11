import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Kalkulator APP',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.grey,
      ),
      // A widget which will be started on application startup
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyHomePage> {
  TextEditingController kontrolerLiczbyA = TextEditingController();
  TextEditingController kontrolerLiczbyB = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text("Kalkulator APP"),
        ),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              ),
            ),
            Text(
              "AAAAAAAAAAAAa",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
                fontFamily: "Comic Sans MS",
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                controller: kontrolerLiczbyA,
                decoration: InputDecoration(
                    label: Text("Podaj liczbe A"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: TextField(
                controller: kontrolerLiczbyB,
                decoration: InputDecoration(
                    label: Text("Podaj liczbe B"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        //button nacisniety
                      },
                      child: Text("+")),
                  ElevatedButton(
                      onPressed: () {
                        //button nacisniety
                      },
                      child: Text("-")),
                  ElevatedButton(
                      onPressed: () {
                        //button nacisniety
                      },
                      child: Text("*")),
                  ElevatedButton(
                      onPressed: () {
                        //button nacisniety
                      },
                      child: Text("/")),
                ],
              ),
            )
          ],
        ));
  }
}
