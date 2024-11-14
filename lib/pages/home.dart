import 'package:flutter/material.dart';
import 'package:insta/util/bubble_stories.dart';
import 'package:insta/util/user_post.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});
  List<String> _names = [
    "Aarav",
    "Vihaan",
    "Aditya",
    "Arjun",
    "Sai",
    "Isha",
    "Ananya",
    "Rohan",
    "Priya",
    "Aishwarya"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Instagram'),
              Row(
                children: [
                  Icon(Icons.add),
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Icon(Icons.favorite),
                  ),
                  Icon((Icons.share)),
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _names.length,
                  itemBuilder: (context, index) {
                    return BubbleStories(text: _names[index]);
                  },
                )),

            //userposts
            Expanded(
              child: ListView.builder(
                itemCount: _names.length,
                itemBuilder: (context, index) {
                  return UserPost(name: _names[index]);
                },
              ),
            )
          ],
        ));
  }
}
