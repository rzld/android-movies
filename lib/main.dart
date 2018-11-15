import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Image.asset('images/infinity-war.jpg',
            height: 240.0,
            fit: BoxFit.contain,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 4.0),
                  child: Text(
                    'Avengers: Infinity War',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w700,
                      fontSize: 24.0,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 4.0),
                  child: Text(
                    'Marvel Studios, 2018',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 4.0),
                  child: Text(
                    'Directed by: Anthony & Joe Russo',
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Cast: Robert Downey Jr., Chris Evans, Scarlett Johansson, Mark Ruffalo, Chris Pratt, Benedict Cumberbatch, Chadwick Boseman',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget synopsisSection = Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text(
              'Synopsis',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Text(
            'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.',
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );

    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Karla',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Avengers: Infinity War'),
        ),
        body: ListView(
          children: <Widget>[
            titleSection,
            synopsisSection,
          ],
        ),
      ),
    );
  }
}