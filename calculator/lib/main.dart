import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'calculator',
      theme: ThemeData(),
      home: Skeleton(),
    );
  }
}

class Skeleton extends StatelessWidget {
  const Skeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("basic calculator"),
      ),
      body: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  num number1 = 0, number2 = 0, result = 0;

  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();

  numberAddition() {
    setState(() {
      number1 = num.parse(textEditingController1.text);
      number2 = num.parse(textEditingController2.text);

      result = number1 + number2;
    });
  }

  numberSubtraction() {
    setState(() {
      number1 = num.parse(textEditingController1.text);
      number2 = num.parse(textEditingController2.text);

      result = number1 - number2;
    });
  }

  numberDivision() {
    setState(() {
      number1 = num.parse(textEditingController1.text);
      number2 = num.parse(textEditingController2.text);

      result = number1 / number2;
    });
  }

  numberMultiplication() {
    setState(() {
      number1 = num.parse(textEditingController1.text);
      number2 = num.parse(textEditingController2.text);

      result = number1 * number2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text("$result"),
            TextField(
              controller: textEditingController1,
            ),
            TextField(
              controller: textEditingController2,
            ),
            ElevatedButton(
              onPressed: numberAddition,
              child: const Text('addition'),
            ),
            ElevatedButton(
              onPressed: numberSubtraction,
              child: const Text('subtraction'),
            ),
            ElevatedButton(
              onPressed: numberDivision,
              child: const Text('division'),
            ),
            ElevatedButton(
              onPressed: numberMultiplication,
              child: const Text('multiplication'),
            ),
          ],
        ),
      ),
    );
  }
}
