import 'package:flutter/material.dart';
import 'package:unb_sql/functions.dart';

class CodeArea extends StatelessWidget {
  const CodeArea({super.key});

  @override
  Widget build(BuildContext context) {
    final codeAreaSize = getCodeAreaSize(context);
    return SizedBox(
      height: codeAreaSize.height,
      width: codeAreaSize.width,
    );
  }
}
