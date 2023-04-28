import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_saver/application/user_bloc/user_bloc.dart';
import 'package:user_saver/infrastructure/apis/user_apis.dart';
import 'package:user_saver/infrastructure/repositories/user_repo.dart';

import '../../../infrastructure/services/connectivity.dart';
import '../home/home_page.dart';
import 'no_connection.dart';

class HomeControl extends StatefulWidget {
  const HomeControl({Key? key}) : super(key: key);

  @override
  State<HomeControl> createState() => _HomeControlState();
}

class _HomeControlState extends State<HomeControl> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.wait([
          ConnectivityX.create,
        ]),
        builder: (context, AsyncSnapshot<List<dynamic>> snap) {
          if (snap.hasData || snap.connectionState == ConnectionState.done) {
            return (snap.data?[0] != ConnectivityResult.none)
                ? BlocProvider(
                    create: (_) => UserBloc(UserRepo(GetUserService.create()))
                      ..add(UserEvent.getUsers()),
                    child: const HomePage())
                : const NoConnection();
          } else {
            return const ScaffoldMessenger(
              child: SnackBar(
                content: Text('connecting network...'),
              ),
            );
          }
        });
  }
}
