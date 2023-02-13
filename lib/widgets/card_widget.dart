import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 15,bottom: 0),
      width: double.infinity,
      height: size.height*0.30,
      // color: Colors.red,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CardImages('https://expertphotography.b-cdn.net/wp-content/uploads/2022/05/Landscape-Photography-Thomas-Morse.jpg'),
          CardImages('https://expertphotography.b-cdn.net/wp-content/uploads/2022/05/Landscape-Photography-Johannes-Andersson.jpg'),
          CardImages('https://expertphotography.b-cdn.net/wp-content/uploads/2022/05/Landscape-Photography-ZoomTeam.jpg'),
          CardImages('https://expertphotography.b-cdn.net/wp-content/uploads/2022/05/Landscape-Photography-Harry-Beugelink.jpg'),
          CardImages('https://expertphotography.b-cdn.net/wp-content/uploads/2022/05/Landscape-Photography-David-Shaw.jpg'),
          CardImages('https://cdn-ajggd.nitrocdn.com/kMoOFpDlsOVtlYJLrnSRNCQXaUFHZPTY/assets/images/optimized/rev-208c8fc/wp-content/uploads/2020/08/night-landscape004.jpg'),
          CardImages('https://cdn-ajggd.nitrocdn.com/kMoOFpDlsOVtlYJLrnSRNCQXaUFHZPTY/assets/images/optimized/rev-208c8fc/wp-content/uploads/2020/08/night-landscape005.jpg'),
          CardImages('https://cdn-ajggd.nitrocdn.com/kMoOFpDlsOVtlYJLrnSRNCQXaUFHZPTY/assets/images/optimized/rev-208c8fc/wp-content/uploads/2020/08/night-landscape007.jpg'),
        ],
      ),
    );
  }
}

class CardImages extends StatelessWidget {
  final String image;
  const CardImages(this.image,{
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10,right: 10),
          width: 250,
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(27, 27, 27, 0.12),
                offset: const Offset(0.0,5.0),
                spreadRadius: 2,
                blurRadius: 5.0
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 195,
          left: 195,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.green,
            child: IconButton(
              onPressed: (){},
              iconSize: 20,
              splashRadius: 26,
              icon: const Icon(Icons.favorite,color: Colors.white),
            )
          )
        )
      ],
    );
  }
}