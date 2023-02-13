import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonNavigator extends StatefulWidget{
  const ButtonNavigator({super.key});

  @override
  State<ButtonNavigator> createState() => _ButtonNavigatorState();
}

class _ButtonNavigatorState extends State<ButtonNavigator> {

  int _paginaActual = 0;
  // final List<IconData> iconData = [Icons.home,Icons.search,Icons.location_on,Icons.notifications,Icons.person];
  // final List<String> label = ['Home','Search','Map','Notification','Account'];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabBar(
      /* MATERIAL
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xff96999C),
        selectedItemColor: const Color(0xff4C5BD2),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
      */
      /* CUPERTINO */ 
      height: 66,
      activeColor: const Color(0xff4C5BD2),
      inactiveColor: const Color(0xff96999C),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 0.1),
      onTap: (value) {
        _paginaActual = value;
        setState(() {});
      },
      currentIndex: _paginaActual,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "",
        ),
      ],
    );
  }
}