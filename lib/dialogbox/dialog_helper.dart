import 'dart:ui';

import 'package:flutter/material.dart';

import 'Show_token.dart';
import 'connect_token.dart';

class DialogHelperToken {
  static exit(context) => showDialog(
      context: context,
      builder: (context) => BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
          child: const ShowToken()));
}

class DialogConnectToken {
  static exit(context) => showDialog(
      context: context,
      builder: (context) => BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
          child: const ConnectToken()));
}
