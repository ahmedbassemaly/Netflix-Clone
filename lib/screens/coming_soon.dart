import 'package:flutter/material.dart';
import 'package:netflix/widgets/coming_soon.dart';
import '../data/data.dart';
import '../widgets/widgets.dart';

class ComingSoon extends StatefulWidget {
  const ComingSoon({super.key});

  @override
  State<ComingSoon> createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const [
          Center(
            child: Text(
              'Coming Soon',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Expanded(
            child: ComingSoonList(
              comingSoonList: comingSoon,
            ),
          ),
        ],
      ),
    );
  }
}
