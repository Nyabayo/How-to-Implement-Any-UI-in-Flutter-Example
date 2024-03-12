import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// MyApp is the root widget of your application. It's stateless because it doesn't manage any state.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp is the top-level widget that wraps your app. It provides essential app functionalities.
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

// MyHomePage is a stateful widget because it might manage state changes in response to interactions.
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // Scaffold provides the high-level structure for the UI, including app bars, body, and floating action buttons.
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter UI Implementation'),
      ),
      body: SingleChildScrollView(
        // SingleChildScrollView allows for simple vertical scrolling.
        child: Column(
          // Column arranges its children vertically.
          children: <Widget>[
            Container(
              // Container allows for decoration and alignment. It's versatile for any UI design.
              height: 200.0,
              color: Colors.amber,
              alignment: Alignment.center,
              child: Text('Top Widget'),
            ),
            ListView.builder(
              // ListView.builder creates a list of items dynamically.
              physics:
                  NeverScrollableScrollPhysics(), // Disables scrolling within the ListView.
              shrinkWrap:
                  true, // Fits the ListView within the SingleChildScrollView.
              itemCount: 5, // Number of items in the list.
              itemBuilder: (context, index) {
                // itemBuilder returns each item in the list.
                return ListTile(
                  title: Text('Item $index'),
                );
              },
            ),
            Container(
              // Another Container for different customization at the bottom of the UI.
              height: 200.0,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text('Bottom Widget'),
            ),
          ],
        ),
      ),
    );
  }
}
