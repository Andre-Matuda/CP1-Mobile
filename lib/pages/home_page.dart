import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final List<Widget> pages = const [
    Center(child: Text('Reservas')),
    Center(child: Text('Mesas')),
    Center(child: Text('Configurações')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        backgroundColor: const Color.fromARGB(255, 168, 214, 115),
        animationDuration: const Duration(milliseconds: 1000),
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.event_available),
            label: "Reservas",
            selectedIcon: Icon(Icons.event_available, color: Colors.red),
          ),
          NavigationDestination(
            icon: Icon(Icons.table_restaurant),
            label: "Mesas",
            selectedIcon: Icon(Icons.table_restaurant, color: Colors.red),
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: "Configurações",
            selectedIcon: Icon(Icons.settings, color: Colors.red),
          ),
        ],
      ),
    );
  }
}