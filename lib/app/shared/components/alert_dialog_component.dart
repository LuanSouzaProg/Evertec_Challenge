import 'package:flutter/material.dart';

class AlertDialogComponent extends StatelessWidget {
  final String title;
  final String content;
  final String textButton;
  final Function() onPressed;

  const AlertDialogComponent({
    super.key,
    required this.title,
    required this.content,
    required this.textButton,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        TextButton(
          onPressed: onPressed,
          child: Text(textButton),
        ),
      ],
    );
  }
}
