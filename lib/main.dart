import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lafin Demo1',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'lafin home page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pushed the button this many times'),
            Text('$_counter', style: Theme.of(context).textTheme.displaySmall,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increamentCounter,
        tooltip: '증가시킨다',
        child: Icon(Icons.add),
      ),
      persistentFooterButtons: [
        FloatingActionButton(
          onPressed: _resetCounter,
          child: Icon(Icons.refresh),
        )
      ],
    );
  }

  _increamentCounter() {
    setState(() {
      _counter++;
    });
  }

  _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }
}
