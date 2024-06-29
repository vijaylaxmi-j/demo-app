import 'package:demo/game_list.dart';
import 'package:flutter/material.dart';
import 'package:demo/game_data.dart';
import 'package:flutter/widgets.dart';

class AllGamesScreen extends StatefulWidget {
  const AllGamesScreen({super.key});

  @override
  State<AllGamesScreen> createState() => _AllGamesScreenState();
}

class _AllGamesScreenState extends State<AllGamesScreen> {
  final Map<String, IconData> filters = {
    'All': Icons.sports_esports,
    'Favourite': Icons.favorite_border,
    'Top Rated': Icons.star_border,
    'Preview': Icons.keyboard_return,
  };

  late String selectedFilter;
  @override
  void initState() {
    super.initState();
    selectedFilter = filters.keys.first;
  }
  @override
  Widget build(BuildContext context) {
    final List<MapEntry<String, IconData>> filterList =
        filters.entries.toList();


    const border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Color.fromRGBO(225, 225, 225, 1)),
    );

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Scaffold(
          appBar: AppBar(
            forceMaterialTransparency: true,
            title: const Text('All Game'),
            actions:  [
             
            GestureDetector(
                onTap: (){},
              child: const Image(image: AssetImage("assets/icons/coin.jpg"))),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: (){},
                child: const Image(image: AssetImage("assets/icons/cash.png"))),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const TextField(
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Black',
                      color: Colors.black,
                      backgroundColor: Color.fromARGB(227, 251, 251, 251)),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    border: border,
                    enabledBorder: border,
                    focusedBorder: border,
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: ListView.builder(
                      itemCount: filters.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final MapEntry<String, IconData> filter =
                            filterList[index];

                        return Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedFilter = filter.key;
                              });
                            },
                            child: Chip(
                              label: Text(filter.key,
                                  style: TextStyle(
                                    foreground: Paint()
                                      ..color = selectedFilter == filter.key
                                          ? Theme.of(context)
                                              .colorScheme
                                              .primary
                                          : const Color.fromRGBO(1, 5, 10, 1),
                                  )),

                              avatar: Icon(
                                filter.value,
                                color: selectedFilter == filter.key
                                    ? Theme.of(context).colorScheme.primary
                                    : const Color.fromRGBO(1, 5, 10, 1),
                              ),
                              // backgroundColor: selectedFilter == filter
                              //     ? Theme.of(context).colorScheme.primary
                              //     : const Color.fromRGBO(245, 247, 249, 1),
                              labelStyle: const TextStyle(
                                fontSize: 12,
                                fontFamily: 'Black',
                              ),
                              elevation: 1,
                              side: const BorderSide(
                                color: Color.fromARGB(0, 4, 7, 9),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              shadowColor: Colors.black,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                            ),
                          ),
                        );
                      }),
                ),
                GridView.builder(
                    itemCount: games.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                         SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: MediaQuery.of(context).size.shortestSide < 600 ? 2 : 4,
                      childAspectRatio: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      mainAxisExtent: 250,
                    ),
                    itemBuilder: (context, index) {
                      final game = games[index];
                      return GameList(
                          title: game['title'] as String,
                          isFavourite: game['favourite'] as bool,
                          gameImage: game['imageUrl'] as String,
                          review: game['reviews'] as String,
                          rating: game['rating'] as String);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
