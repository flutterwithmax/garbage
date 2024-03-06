import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Widget Listtile(String title, IconData icon) {
      return ListTile(
        onTap: () {},
        leading: Icon(
          icon,
          // color: Colors.black,
          size: 26,
        ),
        title: Text(
          title,
          // style: const TextStyle(
          //   fontWeight: FontWeight.normal,
          //   fontSize: 18,
          //   color: Colors.black,
          // ),
        ),
      );
    }

    return Drawer(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 240,
            child: Image.asset(
              'assets/images/drawer_bg.png',
              fit: BoxFit.cover,
            ),
          ),
          Listtile('Ta`lim', Icons.lightbulb),
          Listtile('Testlar', Icons.quiz),
          Listtile('Lug`at', Icons.lightbulb),
          Listtile('Learn', Icons.lightbulb),
        ],
      ),
    );
  }
}
