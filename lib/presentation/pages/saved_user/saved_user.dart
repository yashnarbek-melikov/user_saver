import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../application/user_bloc/user_bloc.dart';
import '../../../infrastructure/models/user/user_model.dart';
import '../../styles/theme_wrapper.dart';

class SavedUser extends StatefulWidget {
  const SavedUser({Key? key}) : super(key: key);

  @override
  State<SavedUser> createState() => _SavedUserState();
}

class _SavedUserState extends State<SavedUser> {
  List<String> imageUrl = ['saved', 'unsave'];

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, _) {
      return Scaffold(
          backgroundColor: colors.backgroundColor,
          body: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state.usersModel != null && state.usersModel!.users.isNotEmpty) {
                List<UserModel> userModelList = state.usersModel!.users.toList();
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: userModelList.length,
                    itemBuilder: (context, index) {
                      UserModel user = userModelList[index];
                      return ListTile(
                          title: Text(user.login),
                          subtitle: Text(user.type),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(user.avatarUrl),
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                context.read<UserBloc>().add(UserEvent.saveUser(userModel: user));
                              },
                              icon: SvgPicture.asset(
                                  'assets/images/svg/saved.svg')));
                    });
              } else {
                return const SizedBox();
              }
            },
          ));
    });
  }
}