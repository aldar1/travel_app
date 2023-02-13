import 'package:flutter/material.dart';
import 'package:travel_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return ListView(
      // physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(0),
      children: [
        Stack(
          children: const[
            BackgroundAppBar(),
            BackgroundImagesText(),
          ],
        ),
        const BodyTextStar(),
        const ListUser()
      ],
    );
  }
}

class BackgroundImagesText extends StatelessWidget {
  const BackgroundImagesText({super.key,});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 15,bottom: 10,left: 20),
            child: Text('Pupular',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
          ),
          CardWidget()
        ],
      )
    );
  }
}

class BodyTextStar extends StatelessWidget {
  const BodyTextStar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<IconData> star = [Icons.star,Icons.star,Icons.star,Icons.star,Icons.star_half];

    return Container(
      padding: const EdgeInsets.only(top: 15,bottom: 0,left: 20,right: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text('Duwili Ella',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              const SizedBox(width: 20,),
              ...star.map((star) => Icon(star,color: const Color(0xffF2C715),size: 20,),)
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'Cillum aliqua nisi dolore mollit ut nulla in est ut sit cupidatat. Duis duis eiusmod adipisicing est. Et quis ea ad consequat aliqua incididunt. Nulla enim nostrud laborum mollit sint velit quis. Sit mollit sit cupidatat quis ut incididunt tempor anim cupidatat. \n\n Id tempor duis est dolor proident aute. Ipsum deserunt culpa exercitation nisi commodo officia. Voluptate eiusmod laboris nisi in eiusmod exercitation aliqua aliqua duis laboris.',
              style: TextStyle(color: Color(0xff969699),fontWeight: FontWeight.bold,),
            ),
          ),
          const Button1(),
          const Text('All reviews',style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}





