import 'package:flutter/material.dart';
import 'package:unb_sql/functions.dart';

class RightBar extends StatelessWidget {
  const RightBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size rightBarSize = getRightBarSize(context);

    return Column(
      children: [
        SizedBox(
          width: rightBarSize.width,
          height: rightBarSize.height,
        ),
      ],
    );
  }
}
