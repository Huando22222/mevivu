import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({super.key, required this.text});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool isExpanded = false;
  static const int maxLength =
      50; // Số ký tự tối đa trước khi hiển thị "Show more"

  @override
  Widget build(BuildContext context) {
    final displayText = isExpanded || widget.text.length <= maxLength
        ? widget.text
        : widget.text.substring(0, maxLength) + '... ';

    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: RichText(
        text: TextSpan(
          style: TextStyle(color: Colors.grey.shade700),
          children: [
            TextSpan(text: displayText),
            if (widget.text.length > maxLength && !isExpanded)
              TextSpan(
                text: "Show more",
                style: TextStyle(
                  color: Colors.blue.shade400,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
