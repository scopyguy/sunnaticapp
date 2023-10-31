import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        bottomNavigationBar: BottomNavigationBar(
          elevation: 40,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.background,
                icon: const Icon(Icons.home),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: const Icon(Icons.explore),
                label: 'Explore',
                backgroundColor: Theme.of(context).colorScheme.background),
            const BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'favourite'),
            const BottomNavigationBarItem(
              icon: Icon(Icons.download),
              label: 'Downloads',
            ),
          ],
        ),
        body: const SafeArea(
          child: Scaffold(
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/scopy.png'),
                      radius: 30,
                    ),
                    Row(
                      children: [Icon(Icons.search), Icon(Icons.notifications)],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
