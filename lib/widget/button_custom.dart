import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final bool selected;
  const ButtonCustom({
    super.key,
    this.text,
    this.icon,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: selected
            ? const LinearGradient(
                colors: [
                  Color(0xff7fc9f4),
                  Color(0xff33a2e3),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            : null,
        color: selected ? null : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () {
            // Handle button tap
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Wrap(
              spacing: 8,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                if (text != null)
                  Text(
                    text!,
                    style: TextStyle(
                      color: selected ? Colors.white : Colors.grey,
                    ),
                  ),
                if (icon != null)
                  Icon(
                    icon,
                    color: selected ? Colors.white : Colors.grey,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
