//Round BUTTON
import 'package:flutter/material.dart';

///Only use one child at a time with this button: only an Icon, a number or a single or double letter(s).
///This method takes in params: [child] of type required widget,
///
///[Icon] of type Icon?
///
///[onPressed] of type required void Function?
///
Row roundButtonComponent({
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
                  const CircleBorder()),
            ),
          ),
        ),
      ),
    ],
  );
}
