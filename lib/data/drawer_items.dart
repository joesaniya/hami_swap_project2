import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swap_hami/model/drawer_item.dart';

final itemsFirst = [
  DrawerItem(title: 'Home', icon: Icons.home_outlined, sub: '0'),
  DrawerItem(title: 'Trade', icon: FontAwesomeIcons.rightLeft, sub: '3'),
  DrawerItem(title: 'Social Media', icon: Icons.group, sub: '3'),
  DrawerItem(title: 'More', icon: Icons.more_horiz, sub: '3'),
];

final itemsSecond = [
  DrawerItem(title: 'Notifications', icon: Icons.notifications, sub: '0'),
  DrawerItem(title: 'Settings', icon: Icons.settings, sub: '0'),
];
