import 'package:flutter/material.dart';
class HistoryList extends StatelessWidget {
  const HistoryList({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: MediaQuery.sizeOf(context).width * 0.03,
            mainAxisSpacing: MediaQuery.sizeOf(context).height * 0.03,
            childAspectRatio: 0.7
        ),
        children: List.generate(
          20,
              (index) => Image.asset(
            'assets/images/movies_posters_group_2.png',
            fit: BoxFit.cover,


          ),
        )
    );
  }
}

