import 'package:flutter/material.dart';

class SliderMusic extends StatelessWidget {
  const SliderMusic(
      {Key? key, required this.currentTime, required this.callback, required this.timer})
      : super(key: key);
  final double currentTime;
  final double timer;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        children: [
          Slider(
              activeColor: Colors.blue,
              inactiveColor: Colors.grey[600],
              max: timer,
              value: currentTime,
              onChanged: (value) => callback(value)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(timerModal(currentTime),
                  style: TextStyle(color: Colors.white)),
              Text(timerModal(timer), style: TextStyle(color: Colors.white))
            ],
          )
        ],
      ),
    );
  }
  
  String timerModal(double time) {
    int minute;
    int second;
    
    second = (time % 60).floor();
    minute = (time / 60).floor();

    String formatSeconde = (second < 10) ? "0$second" : "$second";
    String formatMinute = (minute == 0) ? "0$minute" : "$minute";
    return "$formatMinute:$formatSeconde";
  }
}
