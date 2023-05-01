
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timerappprovider/provider.dart';

class PlayButton extends StatefulWidget {
  const PlayButton({Key? key}) : super(key: key);

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<TimerService>(context);
    return Column(
      children: [
        Container(
          width: 85,
          height: 120,

          decoration: BoxDecoration(
            shape: BoxShape.circle,
        color: Color(0xffbc3e3d),

          ),
          child:  IconButton(onPressed: () {
            provider.timePlaying?Provider.of<TimerService>(context,listen: false).Pause():
            Provider.of<TimerService>(context,listen: false).Start();

          },icon:provider.timePlaying?Icon( Icons.pause,color: Colors.white,size: 50):Icon( Icons.play_arrow_sharp,color: Colors.white,size: 50),
        ),
        )

      ],
    );
  }
}
