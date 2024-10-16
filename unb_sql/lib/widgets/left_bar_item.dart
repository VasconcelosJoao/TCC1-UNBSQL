import 'package:flutter/material.dart';

class LeftBarItem extends StatelessWidget {
  final String text;
  final IconData icon;
  const LeftBarItem({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: MediaQuery.of(context).size.width * 0.0090),
        Icon(
          icon,
        ),
        const SizedBox(width: 10),
        Flexible(
          child: Text(
            text,
            overflow: TextOverflow.visible,
            softWrap: true,
            style: const TextStyle(),
          ),
        ),
      ],
    );
  }
}
