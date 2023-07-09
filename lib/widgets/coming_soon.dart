// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import '../models/content_model.dart';

class ComingSoonList extends StatelessWidget {
  final List<Content> comingSoonList;

  const ComingSoonList({
    super.key,
    required this.comingSoonList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 24.0),
          //   child: Text(
          //     title,
          //     style: const TextStyle(
          //         color: Colors.white,
          //         fontSize: 20.0,
          //         fontWeight: FontWeight.bold),
          //   ),
          // ),
          SizedBox(
            height: 500,
            child: ListView.builder(
              // padding:
              //     const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              scrollDirection: Axis.horizontal,
              itemCount: comingSoonList.length,
              itemBuilder: ((context, index) {
                final Content content = comingSoonList[index];
                return GestureDetector(
                  onTap: () => print(content.name),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Transform.rotate(
                      angle: 0.1,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        height: 400,
                        width: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(content.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
