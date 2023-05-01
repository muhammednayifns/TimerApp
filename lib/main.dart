import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timerappprovider/homescreen.dart';
import 'package:timerappprovider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create:(context) => TimerService() ,child: MaterialApp(debugShowCheckedModeBanner: false,home: HomeScreen(),)));
}

