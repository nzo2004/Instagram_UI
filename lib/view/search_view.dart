import 'package:flutter/material.dart';

class Search_View extends StatefulWidget {
  const Search_View({super.key});

  @override
  State<Search_View> createState() => _Search_ViewState();
}

class _Search_ViewState extends State<Search_View> {
  @override
  Widget build(BuildContext context) {
    List<String> button_title = [
      'IGTV',
      'Travel',
      'Architecture',
      'Decor',
      'Style',
      'Food',
      'Art',
      'Beauty',
      'DIY',
      'Music'
    ];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  contentPadding: EdgeInsets.all(0),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  fillColor: Color.fromRGBO(220, 220, 220, 1),
                  filled: true),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.person_add),
                onPressed: () {},
              )
            ],
          ),
          SliverAppBar(
            title: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      button_title.length,
                      (index) => Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: OutlinedButton(
                              child: Text(
                                button_title[index],
                              ),
                              onPressed: () {},
                            ),
                          ))),
            ),
          )
        ],
      ),
    );
  }
}
