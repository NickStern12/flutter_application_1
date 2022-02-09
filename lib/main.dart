import 'package:carousel_slider/carousel_slider.dart';
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
  @override
  Widget build(BuildContext context) {
    final List<String> itemImage = [
      'assets/img/image1.jpg',
      'assets/img/image2.jpg',
      'assets/img/image3.jpg'
    ];
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
                    "Home",
                    style: TextStyle(
                        fontFamily: 'Times New Roman',
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
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
                Expanded(
                  flex: 3,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 5, 0, 5),
                          child: Text(
                            "Discover",
                            style: TextStyle(
                                fontFamily: 'Times New Roman',
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 5, 0, 5),
                          child: Text(
                            "New Collections",
                            style: TextStyle(
                                fontFamily: 'Times New Roman',
                                fontSize: 18,
                                color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  //margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Expanded(
                    flex: 2,
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
                          hintText: "Search...",
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
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  child: CarouselSlider.builder(
                    options: CarouselOptions(
                      autoPlay: true,
                    ),
                    itemCount: itemImage.length,
                    itemBuilder: (context, itemIndex, realIndex) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10.0), //add border radius
                          child: Image.asset(
                            itemImage[itemIndex],
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    },
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
