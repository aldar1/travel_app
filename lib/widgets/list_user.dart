import 'package:flutter/material.dart';

class ListUser extends StatelessWidget{
  const ListUser({super.key});
  @override
  Widget build(BuildContext context){
    final List<IconData> star = [Icons.star,Icons.star,Icons.star,Icons.star,Icons.star_half];
    return Container(
      padding: const EdgeInsets.only(top: 0,bottom: 10,left: 20,right: 20),
      width: double.infinity,
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 30,
            child: Text('aa'),
          ),
          const SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ListUserText(text: 'Varun Yasas',fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54,),
              Row(
                children: [
                  const ListUserText(text: '1 review - 5 photos',fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black45,),
                  ...star.map((star) => Icon(star,color: const Color(0xffF2C715),size: 15,),)
                ],
              ),
              const ListUserText(text: 'There is an amazing place in Srlanka',fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black,)
            ],
          )
        ],
      ),
    );
  }
}

class ListUserText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color color;
  const ListUserText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color
        ),
      ),
    );
  }
}