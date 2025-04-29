import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/gradient_container.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 const MyApp({super.key});
 @override
 Widget build(BuildContext context){
  return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: GradientContainer(
         Colors.purple,
         Colors.deepPurple,
        ),    
    ),
  );
 }
}
