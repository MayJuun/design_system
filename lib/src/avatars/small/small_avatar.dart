import 'package:flutter/material.dart';

class Small extends StatelessWidget {
  const Small({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Image.asset('assets/avatars/Female_small_1.png'),
    );
  }
}
