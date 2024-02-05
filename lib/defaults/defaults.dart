import 'package:flutter/material.dart';

class Defaults {
  static const Color bottomNavItemColor = Colors.blueGrey;
  static final Color bottomNavItemSelectedColor = Colors.blue[700]!;
  static final Color bottomNavSelectedTileColor = Colors.blue[100]!;

  static final bottomNavItemText = [
    'Inbox',
    'Starred',
    'Sent',
    'Drafts',
    'Trash',
    'Spam',
  ];

  static final bottomNavItemIcon = [
    Icons.inbox,
    Icons.star,
    Icons.send,
    Icons.mail,
    Icons.delete,
    Icons.warning_rounded,
  ];
}
