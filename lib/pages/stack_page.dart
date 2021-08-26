import 'package:flutter/material.dart';
import 'package:flutter_app/pages/widgets/container_pelota_widget.dart';
import 'package:flutter_app/pages/widgets/container_widget.dart';
import 'package:flutter_app/pages/widgets/pelota_widget.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

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
          Stack(
        //crossAxisAlignment: C,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /* Expanded(
            flex: 4,
            child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: ContainerPelotaWidget()),
          ), */
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: ContainerWidget(),
          ),
          Positioned(
              top: 0,
              right: MediaQuery.of(context).size.width / 2 - 50,
              child: PelotaWidget(
                backgroundColor: Colors.black,
              )),
          /* Text(
            "Uno",
            style: TextStyle(fontSize: MediaQuery.of(context).size.width / 5),
          ),
          Text(
            "Dos",
            style: TextStyle(fontSize: 30),
          ), */
        ],
      ),
      /* ) */
    );
  }
}
