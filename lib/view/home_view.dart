import 'package:flutter/material.dart';
import 'package:instagram_ui/material/list/post_images.dart';
import 'package:instagram_ui/material/list/profile_images.dart';
import 'package:instagram_ui/material/title.dart';

class Home_View extends StatefulWidget {
  const Home_View({super.key});

  @override
  State<Home_View> createState() => _Home_ViewState();
}

class _Home_ViewState extends State<Home_View> {
  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar2,
        body: RefreshIndicator(
          onRefresh: onRefresh,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(
                          8,
                          (index) => Container(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Center(
                                      child: CircleAvatar(
                                        radius: 35,
                                        backgroundImage: NetworkImage(
                                            ('https://boostmeup.com/blog/wp-content/uploads/2023/08/How-To-Get-Rainbow-Ring-On-Instagram-Stories.png')),
                                        child: CircleAvatar(
                                            radius: 30,
                                            backgroundImage: NetworkImage(
                                                ('${profile_Images[index]}'))),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text('Profile Name',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black87))
                                  ],
                                ),
                              ))),
                ),
                Divider(),
                Column(
                  children: List.generate(
                      profile_Images.length,
                      (index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //Post Header
                              Row(
                                children: [
                                  Center(
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: NetworkImage(
                                          ('https://boostmeup.com/blog/wp-content/uploads/2023/08/How-To-Get-Rainbow-Ring-On-Instagram-Stories.png')),
                                      child: CircleAvatar(
                                          radius: 25,
                                          backgroundImage: NetworkImage(
                                              ('${profile_Images[index]}'))),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Profile Name'),
                                  Spacer(),
                                  IconButton(
                                    icon: Icon(Icons.more_horiz),
                                    onPressed: () {},
                                  )
                                ],
                              ),
                              //Images
                              Center(
                                child: Image.network('${postImages[index]}'),
                              ),
                              //Buttons
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(Icons.favorite_border),
                                      onPressed: () {}),
                                  IconButton(
                                      icon: Icon(Icons.mode_comment_outlined),
                                      onPressed: () {}),
                                  IconButton(
                                      icon: Icon(Icons.share),
                                      onPressed: () {}),
                                  Spacer(),
                                  IconButton(
                                      icon: Icon(Icons.bookmark_border),
                                      onPressed: () {})
                                ],
                              ),
                              //Post Text
                              Container(
                                padding: EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                        text: TextSpan(
                                            style:
                                                TextStyle(color: Colors.black),
                                            children: [
                                          TextSpan(text: 'Liked by'),
                                          TextSpan(
                                              text: 'Profile Name',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          TextSpan(text: 'and'),
                                          TextSpan(
                                              text: 'other',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold))
                                        ])),
                                    RichText(
                                        text: TextSpan(
                                            style:
                                                TextStyle(color: Colors.black),
                                            children: [
                                          TextSpan(
                                              text: 'Profile Name',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          TextSpan(
                                              text: 'These views are amazing'),
                                        ])),
                                    Text(
                                      'View all 12 comment',
                                      style: TextStyle(color: Colors.black38),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  var appBar2 = AppBar(
    title: home_title(),
    actions: [
      IconButton(
        icon: Icon(
          Icons.add_circle_outline,
          size: 35,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(
          Icons.favorite_border,
          size: 35,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(
          Icons.chat_bubble_outline_outlined,
          size: 35,
        ),
        onPressed: () {},
      ),
    ],
  );
}
