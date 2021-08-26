import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Mi libro',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      //color: Colors.red,
      decoration: BoxDecoration(
        //backgroundBlendMode: ,
        image: DecorationImage(
          image: NetworkImage(
              "https://ep01.epimg.net/elpais/imagenes/2019/10/30/album/1572424649_614672_1572453030_noticia_normal.jpg"),
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.7), BlendMode.dstATop),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.black,
              offset: Offset(10, 10),
              blurRadius: 10,
              spreadRadius: 2)
        ],
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        color: Colors.brown,

        /* shape: StadiumBorder() */
      ),
    );
  }
}
