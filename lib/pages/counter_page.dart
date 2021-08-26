import 'package:flutter/material.dart';
import 'package:flutter_app/pages/widgets/button_widget.dart';

//stateless //sin esto
//statefull //con estado
class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  TextEditingController _counterController = TextEditingController(text: '0');

  int counter = 0;

  void _incrementar() {
    _counterController.text =
        (int.parse(_counterController.text) + 1).toString();
    /* setState(() {
      counter++;
    }); */
  }

  void _decrementar() {
    _counterController.text =
        (int.parse(_counterController.text) - 1).toString();
    /* setState(() {
      counter--;
    }); */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child:
              /* Text(
            counter.toString(),
            style: TextStyle(fontSize: 50),
          ), */
              TextField(
            controller: _counterController,
            style: TextStyle(fontSize: 40),
          ),
        ),
        ButtonWidget(
          text: "Incrementar",
          onPressed: () => _incrementar() /* null */,
        ),
        ButtonWidget(
          text: "Decrementar",
          onPressed: () => _decrementar() /* null */,
        ),

        /* IconButton(
          onPressed: null,
          icon: Icon(Icons.add),
          color: Colors.blue,
        ),
        IconButton(
          onPressed: null,
          icon: Icon(Icons.),
          color: Colors.blue,
        ) */
      ],
    ));
  }
}
