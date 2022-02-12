import 'package:dice/dice.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

Future<void> main() async => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'dice'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _1D100 = 0;
  int _1D10 = 0;
  int _1D8 = 0;

  void _roll1D100() {
    setState(() {
      var rand = math.Random();
      _1D100 = rand.nextInt(100) + 1;
    });
  }

  void _roll1D10() {
    setState(() {
      var rand = math.Random();
      _1D10 = rand.nextInt(10) + 1;
    });
  }

  void _roll1D8() {
    setState(() {
      var rand = math.Random();
      _1D8 = rand.nextInt(8) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Card(
                color: Color(0xfff4efee),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding:  EdgeInsets.only(top: 40, bottom: 40, left: 40, right: 20),
                      child: Text(
                        "1D100",
                        style: TextStyle(
                          color: Color(0xff6f5d61),
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 40, left: 20, right: 20),
                      child: Text(
                        '$_1D100',
                        style: const TextStyle(
                          color: Color(0xff6f5d61),
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 40, left: 20, right: 35),
                      child: TextButton(
                          onPressed: _roll1D100,
                          child: const Text(
                            "roll",
                            style: TextStyle(
                              color: Color(0xff6f5d61),
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                color: Color(0xfff4efee),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding:  EdgeInsets.only(top: 40, bottom: 40, left: 40, right: 20),
                      child: Text(
                        "1D10",
                        style: TextStyle(
                          color: Color(0xff6f5d61),
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 40, left: 20, right: 20),
                      child: Text(
                        '$_1D10',
                        style: const TextStyle(
                          color: Color(0xff6f5d61),
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 40, left: 20, right: 40),
                      child: TextButton(
                          onPressed: _roll1D10,
                          child: const Text(
                            "roll",
                            style: TextStyle(
                              color: Color(0xff6f5d61),
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                color: Color(0xfff4efee),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding:  EdgeInsets.only(top: 40, bottom: 40, left: 40, right: 20),
                      child: Text(
                        "1D8",
                        style: TextStyle(
                          color: Color(0xff6f5d61),
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 40, left: 20, right: 20),
                      child: Text(
                        '$_1D8',
                        style: const TextStyle(
                          color: Color(0xff6f5d61),
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 40, left: 20, right: 40),
                      child: TextButton(
                          onPressed: _roll1D8,
                          child: const Text(
                            "roll",
                            style: TextStyle(
                              color: Color(0xff6f5d61),
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
