

import 'package:demo/leaderboard_data.dart';
import 'package:flutter/material.dart';

class LeaderBoardScreen extends StatefulWidget {
  const LeaderBoardScreen({super.key});

  @override
  State<LeaderBoardScreen> createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(124, 131, 255, 1),
        title: const Text('Leaderboard',style: TextStyle(color:Colors.white),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(Icons.help_outline,color:Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Color.fromRGBO(124, 131, 255, 1),
              image: DecorationImage(
                  image: AssetImage("assets/images/leaderboard.png"),
                  fit: BoxFit.cover)),
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 230,
              child: Stack(
                alignment: Alignment(1.0, 1.0),
                children: [
                  Positioned(
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(42, 50, 174, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      // child: Container(
                      //   width: 400,
                      //   height: 125,
                      //   decoration: const BoxDecoration(
                      //     shape:BoxShape.circle,
                      //     image:DecorationImage(image: AssetImage('assets/images/nike.webp')),
                      //   ),
                      // ),
                    ),
                  ),
                  const Positioned(
                    top: 80,
                    left: 40,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/avatar.jpg'),
                      foregroundColor: Colors.orange,
                      radius: 30,
                    ),
                  ),
                  const Positioned(
                    top: 80,
                    right: 40,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/avatar.jpg'),
                      radius: 30,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: MediaQuery.of(context).size.width / 2 -
                        (MediaQuery.of(context).size.width / 4.5),
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width * 0.385,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(49, 58, 202, 1),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    // right: MediaQuery.of(context).size.width / 2.55,
                    right: MediaQuery.of(context).size.width/2 - 50,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/avatar.jpg'),
                    //  radius: (MediaQuery.of(context).size.width / 2.5)*0.15,
                    radius:35,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 400,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color.fromRGBO(147, 139, 186, 0.412),
                      ),
                      child: TabBar(
                        labelColor: Colors.black,
                        controller: _tabController,
                        tabs: const [
                          Tab(text: 'Today'),
                          Tab(text: 'This Week'),
                          Tab(text: 'This Month'),
                        ],
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      height: MediaQuery.of(context).size.height,
                      child: TabBarView(
                        // physics: const NeverScrollableScrollPhysics(),
                        controller: _tabController,
                        children: [
                          LeaderboardResult(),
                          LeaderboardResult(),
                          LeaderboardResult(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    ));
  }
}

class LeaderboardResult extends StatelessWidget {
  const LeaderboardResult({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
          shrinkWrap: true,
        
          itemCount: points.length,
          itemBuilder: (context, index) {
            final point = points[index];
            return Column(
              children: [
               const SizedBox(
                  height: 12,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(0, 0, 0, 0.114),
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    children: [
                      
                      Text(point['rank'].toString()),
                      const SizedBox(
                        width: 50,
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(point['imageUrl'] as String),
                        radius: 20,
                      ),
                     const SizedBox(width: 20,),
                      Text(point['name'] as String),
                       const Spacer(),
                      Text(point['coins'] as String),
                      ImageIcon(AssetImage('assets/images/coin.jpg')),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
