import 'package:flutter/material.dart';
import 'package:insta/util/accoount_tab1.dart';
import 'package:insta/util/account_tab2.dart';
import 'package:insta/util/account_tab3.dart';
import 'package:insta/util/account_tab4.dart';
import 'package:insta/util/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('User Account'),
              Icon(Icons.menu)
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0), // Add padding around the whole body
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Aligns everything to the left
            children: [
              Row(
                children: [
                  // Profile picture
                  Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  // Post, followers, and following
                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '250',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text('posts'),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '9999',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text('Followers'),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '9999',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text('following'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      
              SizedBox(height: 10), // Space between profile info and name section
      
              // Profile name and other information below the profile picture
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Ensure this column aligns left
                children: [
                  // Name (Gourav)
                  Text(
                    'Gourav',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4), // Space between name and description
                  // Description (Radhee Radhe)
                  Text(
                    'Radhee Radhe',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                  SizedBox(height: 4), // Space between description and website
                  // Website (youtube.com)
                  Text(
                    'youtube.com',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ],
              ),
      
              //buttons 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(2),
                          child: Center(child: Text('Edit Profile'),),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(2),
                          child: Center(child: Text('Ad Tools'),),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                
                
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(2),
                          child: Center(child: Text('Insights'),),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //hilights
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BubbleStories(text: 'highlight 1'),
                    BubbleStories(text: 'highlight 2'),
                    BubbleStories(text: 'highlight 3'),
                    BubbleStories(text: 'highlight 4'),
                    BubbleStories(text: 'highlight 5'),
                    BubbleStories(text: 'highlight 6'),
                  ],
                ),
              ),
      
              TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.grid_3x3_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.video_call),
                  ),
                  Tab(
                    icon: Icon(Icons.shop),
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                  ),
                ]
              ),



            Expanded(
              child: TabBarView(
                children: [
                AccoountTab1(),
                AccountTab2(),
                AccountTab3(),
                AccountTab4()
              ]),
            )

            ],
          ),
        ),
      ),
    );
  }
}