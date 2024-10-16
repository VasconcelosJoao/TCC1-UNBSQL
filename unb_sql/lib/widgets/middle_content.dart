import 'package:flutter/material.dart';
import 'package:unb_sql/widgets/code_area.dart';
import 'package:unb_sql/widgets/terminal_area.dart';

class MiddleContent extends StatelessWidget {
  const MiddleContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CodeArea(),
        TerminalArea(),
      ],
    );
  }
}
