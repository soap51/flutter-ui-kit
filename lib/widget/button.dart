import 'package:flutter/material.dart';
import 'package:ui_kit/model/button.dart';

class Button extends StatelessWidget {
  Button({
    super.key,
    required this.onPressed,
    required this.text,
    this.variant = ButtonVariant.primary,
    this.icon,
    this.isRightIcon,
  });

  void Function() onPressed;
  String text;
  ButtonVariant variant;
  IconData? icon;
  bool? isRightIcon;
  @override
  Widget build(BuildContext context) {
    final textDirection = isRightIcon != null && isRightIcon!
        ? TextDirection.rtl
        : TextDirection.ltr;
    if (variant == ButtonVariant.primary) {
      if (icon != null) {
        return Directionality(
          textDirection: textDirection,
          child: ElevatedButton.icon(
            onPressed: onPressed,
            icon: Icon(icon),
            label: Text(text),
          ),
        );
      }

      return ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
      );
    }
    if (variant == ButtonVariant.secondary) {
      final style = ElevatedButton.styleFrom(
        side: BorderSide(
          width: 1,
          color: Theme.of(context).primaryColor,
        ),
        backgroundColor: Colors.white,
        foregroundColor: Theme.of(context).primaryColor,
        textStyle: TextStyle(
          color: Theme.of(context).primaryColor,
        ),
      );

      if (icon != null) {
        return Directionality(
          textDirection: textDirection,
          child: ElevatedButton.icon(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              side: BorderSide(
                width: 1,
                color: Theme.of(context).primaryColor,
              ),
              backgroundColor: Colors.white,
              foregroundColor: Theme.of(context).primaryColor,
            ),
            icon: Icon(icon),
            label: Text(text),
          ),
        );
      }
      return ElevatedButton(
        onPressed: onPressed,
        style: style,
        child: Text(text),
      );
    }

    if (icon != null) {
      return Directionality(
        textDirection: textDirection,
        child: TextButton.icon(
          onPressed: onPressed,
          icon: Icon(icon),
          label: Text(text),
        ),
      );
    }

    return TextButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
