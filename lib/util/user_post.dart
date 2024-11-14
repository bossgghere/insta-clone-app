import 'package:flutter/material.dart';
import 'package:insta/main.dart';

class UserPost extends StatelessWidget {
  final String name;
  const UserPost({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //profile
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.menu),
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey[300],
        ),

        //comments, likes, shares
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),

        //liked by
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text('Liked by '),
              Text(
                'rohan ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('and '),
              Text(
                'others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        //comment
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 
                  ' hello great post looking lovely and post is great post is great',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
