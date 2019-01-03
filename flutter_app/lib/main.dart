import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  //stateless ทำให้แก้ไขไม่ได้
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Food Tester'];

  @override
  Widget build(BuildContext contect) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {
                    setState(() { //ไม่งั้นจะไม่มีการอัปเดทค่า
                      _products.add('Advance Food Tester');
                    });
                  },
                  child: Text('Add Product'),
                ),
              ),
              Column(
                children: _products
                    .map((element) => Card(
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/food.jpg'),
                              Text(element)
                            ],
                          ),
                        ))
                    .toList(),
              )
            ],
          )),
    );
  }
}
