import 'dart:ui';

import 'package:flutter/material.dart';

import 'Settings_Alert.dart';
import 'Show_token.dart';
import 'connect_token.dart';
import 'expert_page.dart';
import 'manage_token.dart';

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

class Settings {
  static exit(context) => showDialog(
      context: context,
      builder: (context) => BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
          child: const SettingsPage()));
}

class Expert {
  static exit(context) => showDialog(
      context: context,
      builder: (context) => BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
          child: const ExpertPage()));
}

class ManageTokensPage {
  static exit(context) => showDialog(
      context: context,
      builder: (context) => BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
          child: const ManageTokens()));
}
