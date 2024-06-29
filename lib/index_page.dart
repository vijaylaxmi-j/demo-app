import 'package:demo/account_screen.dart';
import 'package:demo/all_games_screen.dart';
import 'package:demo/home_page.dart';
import 'package:demo/leader_board_screen.dart';
import 'package:demo/reward_page.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int currentPage = 0;
  List<Widget> pages = const [
    HomePage(),
    AllGamesScreen(),
    AccountScreen(),
    RewardPage(),
    LeaderBoardScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        currentIndex: currentPage,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.games_outlined), label: 'All Games'),
          BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb_outlined), label: 'Quiz'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Rewards'),
          BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard_outlined), label: 'Leaderboard'),
        ],
      ),
    );
  }
}
