import 'package:flutter/material.dart';

class large extends StatelessWidget {
  const large({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: 200,
        child: Image.asset('assets/avatars/Female_large_1.png'),
      ),
    );
  }
}
