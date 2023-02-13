import 'package:flutter/material.dart';

class BackgroundAppBar extends StatelessWidget{
  const BackgroundAppBar({super.key});

  @override
  Widget build(BuildContext context){
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height*0.37,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          
          stops: [0.3,0.9],
          colors: [
            Color(0xff4367D3),
            Color(0xff574CD1)
          ]
        )
      ),
    );
  }
}