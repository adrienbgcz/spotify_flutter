import 'package:flutter/material.dart';
import 'package:spotify_flutter/screen/musicPage/widgets/AppBarMusic.dart';
import 'package:spotify_flutter/screen/musicPage/widgets/BottomBarMusic.dart';
import 'package:spotify_flutter/screen/musicPage/widgets/CoverAlbum.dart';
import 'package:spotify_flutter/screen/musicPage/widgets/InformationMusic.dart';
import 'package:spotify_flutter/screen/musicPage/widgets/SliderMusic.dart';
import 'package:spotify_flutter/service/constantData.dart';

import '../../modal/Album.dart';
import '../../modal/Song.dart';

class MyMusicPage extends StatefulWidget {
  const MyMusicPage({Key? key}) : super(key: key);

  @override
  State<MyMusicPage> createState() => _MyMusicPageState();
}

class _MyMusicPageState extends State<MyMusicPage> {
  double _currentTime = 0.0;
  int _index = 0;


  @override
  Widget build(BuildContext context) {
    Song currentAlbum = album_test.songs[_index];

    return Scaffold(
        appBar: AppBarMusic(),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InformationMusic(titre: album_test.name, artiste: "${_index + 1} of ${album_test.songs.length}", height: 40, artistSize: 12, titleSize: 18,),
                CoverAlbum(asset_path: album_test.asset_url,),
                InformationMusic(titre: currentAlbum.name, artiste: currentAlbum.artiste,),
                SliderMusic(timer: (currentAlbum.time).toDouble(), currentTime: _currentTime, callback: changeTimeValue),
                BottomBarMusic(callback: changeMusic,)
              ],
            ),
          ),
        )
    );
  }

  void changeTimeValue(double value) {
    setState(() {
      _currentTime = value;
    });
  }

  void changeMusic(bool isNext) {
    setState(() {
      if(isNext) {
        if(_index + 1 == album_test.songs.length) {
          _index = 0;
        } else {
          _index++;
        }
      } else {
        if(_index - 1 < 0) {
          _index = album_test.songs.length - 1;
        } else {
          _index--;
        }
    }
      _currentTime = 0.0;
    });
  }
}
