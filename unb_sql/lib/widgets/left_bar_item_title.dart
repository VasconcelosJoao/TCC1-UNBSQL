import 'package:flutter/material.dart';

class LeftBarTitle extends StatelessWidget {
  final String title;

  const LeftBarTitle({
    super.key,
    required this.leftbarSize,
    required this.title,
  });

  final Size leftbarSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: leftbarSize.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                title,
                style: const TextStyle(fontSize: 16),
                overflow: TextOverflow.visible,
                softWrap: true,
              ),
            ),
            const Icon(Icons.add),
          ],
        ),
      ),
    );
  }
}
