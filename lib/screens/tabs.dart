import 'package:businessapp/screens/main_drawer.dart';
import 'package:businessapp/widgets/search_panel.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  Widget bottomNavigationBar() {
    return BottomNavigationBar(
        onTap: (value) => setState(() {
              currentIndex = value;
            }),
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Asosiy'),
          BottomNavigationBarItem(icon: Icon(Icons.quiz), label: 'Testlar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Sozlamalar'),
        ]);
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Business App'),
        elevation: 0,
      ),
      drawer: const MainDrawer(),
      bottomNavigationBar: bottomNavigationBar(),
      body: Container(
        color: Colors.red,
        // decoration: const BoxDecoration(
        //   // image: DecorationImage(
        //   //   image: AssetImage('assets/images/bg.png'),
        //   //   fit: BoxFit.cover,
        //   // ),
        // ),
        child: Column(
          children: const [
            SearchPanel(),
          ],
        ),
      ),
    );
  }
}
