import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../styles/theme_wrapper.dart';

class SavedUser extends StatefulWidget {
  const SavedUser({Key? key}) : super(key: key);

  @override
  State<SavedUser> createState() => _SavedUserState();
}

class _SavedUserState extends State<SavedUser> {
  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, _) {
      return Scaffold();
    });
  }
}