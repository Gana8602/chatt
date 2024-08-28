import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    this.color = const Color(0xff0b1f30),
    required this.textColor,
    this.title = "",
    required this.onPress,
    this.onLong,
  }) : super(key: key);

  final VoidCallback onPress;
  final VoidCallback? onLong;
  final String title;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: InkWell(
          onLongPress: onLong,
          onTap: onPress,
          child: Container(
            height: 75,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 30,
                  color: textColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
