// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import '../assets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({super.key, this.scrollOffset = 0.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // const Icon(Icons.menu),
            Image.asset(
              Assets.netflixLogo0,
              height: 20,
            ),
            const SizedBox(width: 12),
            _AppBarButton(
              title: 'TV Shows',
              onTap: () {
                print('TV Shows');
              },
            ),
            _AppBarButton(
              title: 'Movies',
              onTap: () {
                print('Movies');
              },
            ),
            _AppBarButton(
              title: 'My List',
              onTap: () {
                print('My List');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _AppBarButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
