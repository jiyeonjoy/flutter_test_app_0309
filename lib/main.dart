import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    print('---build _MyHomePageState');
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FirstStatelessWidget(),
          SecondStatefulWidget(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
          });
        },
        child: const Icon(Icons.reset_tv),
      ),
    );
  }
}

class FirstStatelessWidget extends StatelessWidget {
  FirstStatelessWidget({Key? key}) : super(key: key) {
    print('---create FirstStatelessWidget');
  }

  @override
  Widget build(BuildContext context) {
    print('---build FirstStatelessWidget');
    return Container(
      width: 200,
      height: 200,
      color: Colors.green,
    );
  }
}

class SecondStatefulWidget extends StatefulWidget {
  SecondStatefulWidget({Key? key}) : super(key: key) {
    print('---create SecondStatefulWidget');
  }

  @override
  State<SecondStatefulWidget> createState() {
    print('---createState _SecondStatefulWidgetState');
    return _SecondStatefulWidgetState();
  }
}

class _SecondStatefulWidgetState extends State<SecondStatefulWidget> {

  @override
  Widget build(BuildContext context) {
    print('---build _SecondStatefulWidgetState');

    return Container(
      width: 200,
      height: 200,
      color: Colors.amber,
    );
  }
}
