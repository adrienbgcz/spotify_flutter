import 'package:flutter/material.dart';

class BottomBarMusic extends StatelessWidget {
  const BottomBarMusic({Key? key, required this.callback}) : super(key: key);
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {print("Repeat");}, icon: Icon(Icons.repeat, color: Colors.white,)),
        /*Spacer(),*/
        Container(
          width: 150,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () => callback(false), icon: Icon(Icons.arrow_back, color: Colors.white)),
              IconButton(onPressed: () {print("Pause");}, icon: Icon(Icons.pause, color: Colors.white)),
              IconButton(onPressed: () => callback(true), icon: Icon(Icons.arrow_forward, color: Colors.white)),
            ],
          ),
        ),
        /*Spacer(),*/
        IconButton(onPressed: () {print("Télécharger");}, icon: Icon(Icons.download, color: Colors.white)),
      ],
    );
  }
}
