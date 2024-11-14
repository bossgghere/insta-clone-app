import 'package:flutter/material.dart';
import 'package:insta/util/explore_grid.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            color: Colors.grey[300],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.search),
                  Container(
                    child: Text('Search'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: ExploreGrid(),
    );
  }
}
