import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void showToast() {
    setState(() {
      Fluttertoast.showToast(
          msg: "This is Center Short Toast",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 10),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(2),
                  child: IconButton(
                    icon: const Icon(Icons.format_align_left),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Home1",
                    style: TextStyle(fontFamily: 'TroubleSide'),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: IconButton(
                        icon: const Icon(Icons.access_alarm),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 5, 0, 5),
                      child: Text(
                        "Discover",
                        style:
                            TextStyle(fontFamily: 'TroubleSide', fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 5, 0, 5),
                      child: Text(
                        "New Collections",
                        style:
                            TextStyle(fontFamily: 'TroubleSide', fontSize: 13),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Theme(
                      child: TextField(
                        style: TextStyle(color: Colors.grey),
                        cursorColor: Colors.blueGrey,
                        decoration: InputDecoration(
                          fillColor: Color(0xFFe6e6e6),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          suffixIcon: Icon(Icons.search),
                          hintText: "Введите логин",
                        ),
                      ),
                      data: Theme.of(context).copyWith(
                        primaryColor: Colors.redAccent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
