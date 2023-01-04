import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Subscription',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0 ;

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subscription Plan'),
      ),
      body: Column
        (
        children: [
        Row
        (
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>
        [
         const Center(
            child: Text(
              'Your Plan',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  height: 1.7,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          ],
        ),
          Row
            (
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>
            [
              Container
                (
                child: Text
                  (
                  'Change',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                child: IconButton(
                  padding: const EdgeInsets.all(0.0),
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.brown,
                  ),
                  color: Colors.black,
                ),
              )
            ],
          ),
          Divider(
            height: 20,
            thickness: 3,
            color: Colors.grey,
          ),
          Column(
            children: [
              Container(
                height: 35,
                width: 400,
                child: Text(
                  'Premium',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),

              Container(
                width: 500,
                height: 32,
                child: Text(
                  "9.99 / month",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    width : 95,
                    child: Text(
                        'Cancel Anytime.',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 12, color: Colors.grey)
                    ),
                  ),
                  Container(
                    child: Text(
                      'Terms and Conditions apply',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 10, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            height: 25,
            thickness: 3,
            color: Colors.grey,
          ),
          Container(
            width: 370,
            height: 30,
            child: Text(
              'Card Number',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 24,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: 370,
            height: 50,
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  labelText: 'Enter your Card Number',
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 20)
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                child: Text(
                  'Expiry Date',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 22,height: 2,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
              Container(
                width: 140,
                child: Text(
                  'Security Code',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 22,
                      height: 2,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      labelText: 'MM/YY',
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 18)),
                ),
              ),
              Container(
                width: 150,
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      labelText: 'CVV',
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 18)),
                ),
              )
            ],
          ),
          Container(
            height: 50,
            width: 360,
            child: Text(
              'Zip Code',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 24,
                  height: 2.3,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          Container(
            width: 370,
            height: 50,
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  labelText: 'Enter Zip Code',
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 18)),
            ),
          ),
          Container(
            child: TextButton(
              child: Text('Subscribe'),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.teal,
                onSurface: Colors.grey,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

