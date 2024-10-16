import 'package:flutter/material.dart';

Size getHeaderSize(context) {
  return Size(
    MediaQuery.of(context).size.width,
    MediaQuery.of(context).size.height / 20,
  );
}

Size getLeftBarSize(context) {
  final headerUsedHeight = getHeaderSize(context).height;
  return Size(
    MediaQuery.of(context).size.width / 10,
    MediaQuery.of(context).size.height - headerUsedHeight,
  );
}

Size getRightBarSize(context) {
  final headerUsedHeight = getHeaderSize(context).height;

  return Size(
    MediaQuery.of(context).size.width / 10,
    MediaQuery.of(context).size.height - headerUsedHeight,
  );
}

Size getCodeAreaSize(context) {
  final headerUsedHeight = getHeaderSize(context).height;
  final leftBarUsedWidth = getLeftBarSize(context).width;
  final rightBarUsedWidth = getRightBarSize(context).width;

  return Size(
    MediaQuery.of(context).size.width - leftBarUsedWidth - rightBarUsedWidth,
    MediaQuery.of(context).size.height - headerUsedHeight,
  );
}
