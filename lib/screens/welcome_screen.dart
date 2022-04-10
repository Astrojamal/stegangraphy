
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
class welcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      
 
        body:
        Center(child:Row(
        mainAxisSize: MainAxisSize.min,
          children:<Widget> [
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 25.0,fontFamily: 'Monoton'
              ),
              child: AnimatedTextKit(
               animatedTexts: [
                       WavyAnimatedText('Stegano')],
                          isRepeatingAnimation: true,
            )),
          DefaultTextStyle(
            style: const TextStyle(
              fontSize: 25.0,color: Colors.red,
              fontFamily: 'Monoton',
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText('graphy'),
                WavyAnimatedText('graphy')

              ]
            )),],

        ))
    );

  }
}
