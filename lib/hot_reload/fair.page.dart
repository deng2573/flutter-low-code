import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:fair/fair.dart';
import 'package:flutter_low_code/hot_reload/fair.model.dart';

class FairPage extends StatelessWidget {
  final FairModel model;

  const FairPage({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FairWidget(name: model.name, path: model.path, data: {
      'fairProps': jsonEncode({}),
    });
  }
}
