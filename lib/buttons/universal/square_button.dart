//Square BUTTON
import 'package:flutter/material.dart';

///This method takes in params: [child] of type required widget,
///
///[Icon] of type Icon?
///
///[onPressed] of type required void Function?
///
Row squareButtonComponent({
  required Widget child,
  IconData? icon,
  required void Function() onPressed,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Align(
        child: SizedBox(
          child: ElevatedButton(
            onPressed: onPressed,
            child: child,
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(
                const Size(50, 50),
              ),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.all(0)),
              enableFeedback: true,
              shape: MaterialStateProperty.all<OutlinedBorder>(
                  const ContinuousRectangleBorder()),
            ),
          ),
        ),
      ),
    ],
  );
}
