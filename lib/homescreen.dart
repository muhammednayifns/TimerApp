
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timerappprovider/Focus.dart';
import 'package:timerappprovider/playbutton.dart';
import 'package:timerappprovider/provider.dart';
import 'package:timerappprovider/timeing.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<TimerService>(context);
    return Scaffold(
      backgroundColor: Color(0xfffa5555),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text("Timer",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: IconButton(onPressed: () {
                    provider.rest();


                  }, icon: Icon(Icons.refresh,color: Colors.white,size: 35,)),
                )

              ],

            ),

          ),
          FocusPage(),
          TimeingPage(),
          PlayButton()
        ],
      ),
    );
  }
}
