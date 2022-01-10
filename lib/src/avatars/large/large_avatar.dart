import 'package:flutter/material.dart';

class Large extends StatelessWidget {
  const Large({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Image.asset('assets/avatars/Female_large_1.png'),
    );
  }
}
