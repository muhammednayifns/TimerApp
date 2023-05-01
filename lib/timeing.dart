
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timerappprovider/provider.dart';
import 'Detailstime.dart';

class TimeingPage extends StatefulWidget {
  const TimeingPage({Key? key}) : super(key: key);

  @override
  State<TimeingPage> createState() => _TimeingPageState();
}

class _TimeingPageState extends State<TimeingPage> {
  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<TimerService>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: Secondslist.map((time ){
            return
        InkWell(
        onTap: () {
          provider.SelectTime(double.parse(time));

        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
          decoration:int.parse(time)==provider.selectedTime? BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          border: Border.all(color: Colors.white,width: 3)
          ):BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xfffa5555),
              border: Border.all(color: Colors.white,width: 3)
          ),
          width: 65,
          height: 40,


          child: Align(alignment: Alignment.center,child: Text((int.parse(time)~/60).toString(),style:int.parse(time)==provider.selectedTime ?TextStyle(color: Color(0xfffa5555),fontWeight: FontWeight.bold,fontSize: 26):TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 26))),
          ),
        ),
        );

        }).toList(),
        ),
      ),
    );
  }
}
