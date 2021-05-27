import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController numberController = TextEditingController();
  TextEditingController resultController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Number Checker',
            style: TextStyle(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.pink[900],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: numberController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                  ),
                  labelText: 'Number',
                  hintText: 'Enter any Number',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: RaisedButton(
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                color: Colors.pinkAccent[700],
                splashColor: Colors.grey[800],
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Check',
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  primeNumber();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: resultController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                  ),
                  labelText: 'Result',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void primeNumber() {
    int no = int.parse(numberController.text);

    bool isprime(no) {
      if (no <= 1) return false;
      if (no == 2) return true;
      if (no % 2 == 0) return false;
      for (int i = 3; i < no; i++) {
        if (no % i == 0) {
          return false;
        }
      }
      return true;
    }

    if (isprime(no)) {
      resultController.text = 'Prime!';
      print(resultController.text);
    } else {
      resultController.text = 'Composite!';
      print(resultController.text);
    }
  }
}
