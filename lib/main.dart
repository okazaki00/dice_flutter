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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// 1. StatefulWidgetを継承したクラスを作る。
class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);
  // createState()　で"State"（Stateを継承したクラス）を返す
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//  2.Stateを継承したクラスを作る。
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _roll1D100() {
    setState(() {
      var rand = math.Random();
      _counter = rand.nextInt(100) + 1;
    });
  }

  //　状態を使いつつ組んだWidgetを返す(build関数)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Card(
                    elevation: 10,
                    color: Colors.lightGreen,
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(padding: EdgeInsets.only(top: 23, right: 18),
                          child: Text(
                            "1D100",
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Padding(padding: const EdgeInsets.only(top: 18, right: 18),
                          child: Text(
                            '$_counter',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                        Padding(padding: const EdgeInsets.only(top: 23, right: 18),
                          child: TextButton(
                              onPressed: _roll1D100, child: const Text("roll")
                          ),),
                      ],
                    )
                ),
                Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(padding: EdgeInsets.only(top: 23, right: 18),
                          child: Text(
                            "1D100",
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Padding(padding: const EdgeInsets.only(top: 18, right: 18),
                          child: Text(
                            '$_counter',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                        Padding(padding: const EdgeInsets.only(top: 23, right: 18),
                          child: TextButton(
                              onPressed: _roll1D100, child: const Text("roll")
                          ),),
                      ],
                    )
                ),
              ],
            ),
            // Row(
            //   children: [
            //     const Padding(padding: EdgeInsets.only(top: 23, right: 18),
            //       child: Text(
            //           "1D100",
            //         style: TextStyle(
            //           fontSize: 24,
            //         ),
            //       ),
            //     ),
            //     Padding(padding: const EdgeInsets.only(top: 18, right: 18),
            //       child: Text(
            //         '$_counter',
            //         style: Theme.of(context).textTheme.headline4,
            //       ),
            //     ),
            //     Padding(padding: const EdgeInsets.only(top: 23, right: 18),
            //       child: TextButton(
            //           onPressed: _roll1D100, child: const Text("roll")
            //       ),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
