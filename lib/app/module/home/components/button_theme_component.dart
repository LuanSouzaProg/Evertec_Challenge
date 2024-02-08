import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class ButtonThemeComponent extends StatefulWidget {
  const ButtonThemeComponent({super.key});

  @override
  State<ButtonThemeComponent> createState() => _ButtonThemeComponentState();
}

class _ButtonThemeComponentState extends State<ButtonThemeComponent> {
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isDarkTheme
            ? Theme.of(context).colorScheme.background
            : Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.grey.shade600,
          width: 2,
        ),
      ),
      width: 100,
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: IconButton(
              icon: const Icon(Icons.wb_sunny),
              color: isDarkTheme
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).colorScheme.primary,
              onPressed: () {
                setState(() {
                  AdaptiveTheme.of(context).setLight();
                  isDarkTheme = false;
                });
              },
            ),
          ),
          Expanded(
            child: IconButton(
              icon: const Icon(Icons.nightlight_round),
              color: isDarkTheme
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.secondary,
              onPressed: () {
                setState(() {
                  AdaptiveTheme.of(context).setDark();
                  isDarkTheme = true;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
