// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator Dev.B1ackmonday'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var ctl_width = TextEditingController();
  var ctl_height = TextEditingController();
  var ctl_length = TextEditingController();
  var result = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    result.text = 'Result will appear here';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(100),
      child: ListView(
        children: [
          Image.network(
            'https://i0.wp.com/www.renebay.com/wp-content/uploads/2021/03/red-bricks-m.jpg?fit=500%2C500&ssl=1',
            width: 100,
            height: 150,
          ),
          Center(
              child: Text(
            'Input Data',
            style: TextStyle(fontSize: 20),
          )),
          SizedBox(
            height: 20,
          ),
          Center(
            child: TextField(
              controller: ctl_width,
              decoration: InputDecoration(
                  labelText: 'Width (m.)', border: OutlineInputBorder()),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: TextField(
              controller: ctl_length,
              decoration: InputDecoration(
                  labelText: 'Length (m.)', border: OutlineInputBorder()),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: TextField(
              controller: ctl_height,
              decoration: InputDecoration(
                  labelText: 'Height (m.)', border: OutlineInputBorder()),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                print(ctl_width.text);
                print(ctl_length.text);
                print(ctl_height.text);
                setState(() {
                  var v1 = double.parse(ctl_width.text);
                  var v2 = double.parse(ctl_length.text);
                  var v3 = double.parse(ctl_height.text);
                  var calc = v1 * v2 * v3;
                  print('Result: $calc (cubic metre)');
                  result.text =
                      " Area size $v1 x $v2 x $v3\nTotal Capacity: $calc cubic metre";
                });
              },
              child: Text(
                'Calculate',
                style: TextStyle(fontSize: 20),
              )),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Row(
              children: [
                Text(
                  result.text,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
