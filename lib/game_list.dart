import 'package:flutter/material.dart';

class GameList extends StatelessWidget {
  final String title;
  final bool isFavourite;
  final String gameImage;
  final String review;
  final String rating;
  const GameList({
    super.key,
    required this.title,
    required this.isFavourite,
    required this.gameImage,
    required this.review,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
            child: Stack(
              children: [
                Image.network(gameImage,
                    height: 200, width: double.infinity, fit: BoxFit.cover),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: ClipOval(
                      child: Container(
                          height: 25,
                          width: 25,
                          color: Color.fromRGBO(12, 12, 12, 0.592))),
                ),
                const Positioned(
                  bottom: 5,
                  right: 8, //give the values according to your requirement
                  child: Icon(Icons.favorite_border,
                      color: Colors.white, size: 20),
                ),
              ],
            )),
        const SizedBox(height: 5),
        Text(title,
            style: const TextStyle(
                fontSize: 12,
                fontFamily: 'Medium',
                fontWeight: FontWeight.bold)),
        const SizedBox(height: 3),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
              color: const Color.fromRGBO(0, 125, 0, 1),
              child: Row(
                children: [
                  Text(rating,
                      style: const TextStyle(
                        fontSize: 12,
                        fontFamily: 'Black',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(width: 2),
                  const Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 3),
            Text(
              '$review Reviews',
              style: const TextStyle(fontFamily: 'Black', fontSize: 12),
            ),
          ],
        )
      ],
    );
  }
}
