import 'package:flutter/material.dart';
import 'package:iger/utils/translate.dart';
import 'package:iger/views/home_view.dart';
import 'package:iger/views/team_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentViewIndex = 0;
  String title = 'iGer';

  @override
  Widget build(BuildContext context) {
    List<String> bottomNavigationBarItemLabels = [
      t(context)!.home,
      t(context)!.team,
      t(context)!.planning,
      t(context)!.profile,
    ];

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            title,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.person),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: IndexedStack(
        index: _currentViewIndex,
        children: [
          const HomeView(),
          const TeamView(),
          Center(
            child: Text(
              t(context)!.planning,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Center(
            child: Text(
              t(context)!.profile,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Theme.of(context).colorScheme.onSurface,
        currentIndex: _currentViewIndex,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: t(context)!.home,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.group),
            label: t(context)!.team,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.calendar_month),
            label: t(context)!.planning,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: t(context)!.profile,
          ),
        ],
        onTap: (value) {
          setState(() {
            _currentViewIndex = value;
          });
          setState(() {
            title = bottomNavigationBarItemLabels[value];
          });
        },
      ),
    );
  }
}
