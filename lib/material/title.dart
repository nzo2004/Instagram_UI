import 'package:flutter/material.dart';

class home_title extends StatelessWidget {
  const home_title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://i.imgur.com/GCzRPfB.png',
      height: 90,
    );
  }
}
