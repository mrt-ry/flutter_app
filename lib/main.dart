import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.pink,
        primaryColor: const Color(0xFFe91e63),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static var _message = "ok";
  static final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('App Name'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                _message,
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: _controller,
                  style: TextStyle(
                      fontSize: 28,
                      color: const Color(0xffFF0000),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"),
                )),
            ElevatedButton(
                child: Text(
                  "Push me",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"),
                ),
                onPressed: buttonPressed)
          ],
        )));
  }

  void buttonPressed() {
    setState(() {
      _message = "you said:" + _controller.text;
    });
  }
}
