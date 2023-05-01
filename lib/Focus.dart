
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timerappprovider/provider.dart';

class FocusPage extends StatefulWidget {
  const FocusPage({Key? key}) : super(key: key);

  @override
  State<FocusPage> createState() => _FocusPageState();
}

class _FocusPageState extends State<FocusPage> {
  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<TimerService>(context);
    final second=provider.currentDuration % 60;
    return
       Column(
         crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text("FOUCS",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28)),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Reusecontainer(text: (provider.currentDuration ~/ 60).toString(),),
                ),
                Column(
                  children: [
                    Text(':',style: TextStyle(color: Color(0xffed9b9b),fontWeight: FontWeight.bold,fontSize: 68)),


                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Reusecontainer(text: second==0 ? "${second.round()}0":second.round().toString()),
                )
              ],
            ),
          )
        ],

    );
  }
}

class Reusecontainer extends StatelessWidget {
  String text;



  Reusecontainer({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(


      height: 170,
      width: 115,
      decoration:BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow:[ BoxShadow(
          color: Color(0xffcf7774),
          blurRadius: 15,



        )]

      ) ,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text,style: TextStyle(color: Color(0xfffc5554),fontWeight: FontWeight.bold,fontSize: 65))
        ],
      ),

    );
  }
}
