
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_saver/presentation/pages/saved_user/saved_user.dart';

import '../../application/user_bloc/user_bloc.dart';
import '../pages/core/app_widget.dart';

class Routes {
  static MaterialPageRoute getAppWidget(SharedPreferences preferences) =>
      MaterialPageRoute(
        builder: (_) => AppWidget(
          preferences: preferences,
        ),
      );

  static MaterialPageRoute getUsersHistory(BuildContext context) =>
      MaterialPageRoute(builder: (_) => BlocProvider.value(
        value: context.read<UserBloc>(),
        child: const SavedUser(),
      ));
}