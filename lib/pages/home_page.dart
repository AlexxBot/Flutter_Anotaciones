import 'package:flutter/material.dart';
import 'package:flutter_app/pages/widgets/container_widget.dart';

// widget sin estado
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
          /* Container(
          //div
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.amber,
          child:  */
          Column(
        //crossAxisAlignment: C,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Padding(
                padding: const EdgeInsets.all(25.0), child: ContainerWidget()),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          ),
          Text(
            "Uno",
            style: TextStyle(fontSize: MediaQuery.of(context).size.width / 5),
          ),
          Text(
            "Dos",
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
      /* ) */
    );
  }
}
