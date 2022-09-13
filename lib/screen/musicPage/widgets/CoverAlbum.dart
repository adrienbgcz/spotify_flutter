import 'package:flutter/material.dart';

class CoverAlbum extends StatelessWidget {
  const CoverAlbum({Key? key, required this.asset_path}) : super(key: key);
  final String asset_path;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(asset_path),
              /*fit: BoxFit.fitHeight*/)
        )
    );
  }
}
