import 'package:flutter/material.dart';

class InformationMusic extends StatelessWidget {
  const InformationMusic({Key? key, required this.titre, required this.artiste, this.height = 60, this.titleSize = 28, this.artistSize = 14}) : super(key: key);
  final String titre;
  final String artiste;
  final double height;
  final double titleSize;
  final double artistSize;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(titre, style: TextStyle(color: Colors.white, fontSize: titleSize, fontWeight: FontWeight.bold),),
              Text(artiste, style: TextStyle(color: Colors.white, fontSize: artistSize,),)
            ]
        )
    );
  }
}
