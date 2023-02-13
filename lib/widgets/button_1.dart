import 'package:flutter/material.dart';


class Button1 extends StatelessWidget{
  const Button1({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      padding: const EdgeInsets.symmetric(horizontal: 45,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [
            Color(0xff4565D3),
            Color(0xff4565D3)
          ],
          stops: [
            0.6,
            0.9
          ]
        )
      ),
      child: TextButton(
        onPressed: (){},
        child: const Text('Navigate',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800)),
      ),
    ); 
  }
}