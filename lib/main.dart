import 'package:flutter/material.dart';

import 'Screens/bikes.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        // The containers in the background
        new Column(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                image: new AssetImage("assets/saas.jpg"),
                fit: BoxFit.fill,
              )),
              height: 270,
              //color: Colors.white,
            ),
            new Container(height: 400, color: Colors.white)
          ],
        ),
        // The card widget with top padding,
        // incase if you wanted bottom padding to work,
        // set the `alignment` of container to Alignment.bottomCenter
        Container(
          margin: EdgeInsets.only(top: 230),
          padding: EdgeInsets.symmetric(horizontal: 30),
          //alignment:,
          height: 310.0,
          width: 440,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, //grey[300],
                // set border width
                borderRadius: BorderRadius.all(
                    Radius.circular(07.0)), // set rounded corner radius
                boxShadow: [
                  BoxShadow(
                      blurRadius: 6, color: Colors.black, offset: Offset(4, 4))
                ] // make rounded corner of border
                ),
            child: new Card(
              color: Colors.white,
              elevation: 4.0,
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(
                    top: 20,
                  )),
                  Text(
                    'ADD BIKES TO COMPARE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 145,
                          height: 200,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 70),
                                child: MaterialButton(
                                  shape: CircleBorder(
                                    side: BorderSide(
                                        color: Colors.black, width: 2),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Bikes()));
                                  },
                                  textColor: Colors.black,
                                  child: Icon(
                                    Icons.add,
                                    size: 24,
                                  ),
                                  padding: EdgeInsets.all(16),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 4),
                                  child: Text(
                                    'Add Bikes',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  )),
                            ],
                          )),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 2),
                            decoration: BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                            width: 30,
                            height: 200,
                            //color: Colors.white,

                            child: Center(
                              child: Text(
                                'VS',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 105,
                          height: 200,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 70),
                                child: MaterialButton(
                                  shape: CircleBorder(
                                    side: BorderSide(
                                        color: Colors.black, width: 2),
                                  ),
                                  onPressed: () {},
                                  textColor: Colors.black,
                                  child: Icon(
                                    Icons.add,
                                    size: 24,
                                  ),
                                  padding: EdgeInsets.all(16),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 0),
                                  child: Text('Add Bikes')),
                            ],
                          )),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 04),
                      height: 37,
                      width: 440,
                      color: Colors.red,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'COMPARE BIKES',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
