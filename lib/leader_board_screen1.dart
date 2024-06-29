import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LeaderBoardScreen extends StatelessWidget {
  const LeaderBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(124, 131, 255, 1),
        title: const Text('Leaderboard'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(Icons.help_outline),
            ),
          ),
        ],
      ),
      body: Container(
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
            height:230,
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
                    backgroundImage: AssetImage('assets/images/nike.webp'),
                    radius: 30,
                  ),
                ),
                const Positioned(
                  top: 80,
                  right: 40,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/nike.webp'),
                    radius: 30,
                  ),
                ),
                
                  Positioned(
                  bottom: 0,
              
                  right: MediaQuery.of(context).size.width/2 - (MediaQuery.of(context).size.width / 4.5),
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width  * 0.385,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(49, 58, 202,1),
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight: Radius.circular(40)),
                    ),
                  ),
                ),
                  Positioned(
                  top: 35,
                  right: MediaQuery.of(context).size.width / 2.5,
                  child:  CircleAvatar(
                                   
                    backgroundImage: AssetImage('assets/images/nike.webp'),
                    // radius: (MediaQuery.of(context).size.width / 2.5)*0.15,
                    
                    
                  ),
                                  ),
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}
