import 'package:flutter/material.dart';
import 'package:instagram_ui/view/home_view.dart';
import 'package:instagram_ui/view/search_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
        appBarTheme: AppBarTheme(
          elevation: 1,
          color: Colors.white,
          iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _counter == 1 ? Search_View() : Home_View(),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  size: 45,
                  color: _counter == 0 ? Colors.red : Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    _counter = 0;
                  });
                },
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.search,
                  size: 45,
                ),
                color: _counter == 1 ? Colors.red : Colors.black,
                onPressed: () {
                  setState(() {
                    _counter = 1;
                  });
                },
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.movie_creation_outlined,
                  size: 45,
                  color: _counter == 2 ? Colors.red : Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    _counter = 2;
                  });
                },
              ),
              Spacer(),
              IconButton(
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    size: 45,
                    color: _counter == 3 ? Colors.red : Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      _counter = 3;
                    });
                  }),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.person,
                  size: 45,
                  color: _counter == 4 ? Colors.red : Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    _counter = 4;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
