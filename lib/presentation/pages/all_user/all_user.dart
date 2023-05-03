import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:user_saver/application/user_bloc/user_bloc.dart';
import 'package:user_saver/infrastructure/models/user/user_model.dart';

import '../../styles/theme_wrapper.dart';

class AllUser extends StatefulWidget {
  const AllUser({Key? key}) : super(key: key);

  @override
  State<AllUser> createState() => _AllUserState();
}

class _AllUserState extends State<AllUser> {
  List<String> imageUrl = ['saved', 'unsave'];

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, _) {
      return Scaffold(
          backgroundColor: colors.backgroundColor,
          body: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state.userModel != null && state.userModel!.isNotEmpty) {
                List<UserModel> userModelList = state.userModel!;
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: userModelList.length,
                    itemBuilder: (context, index) {
                      UserModel user = userModelList[index];
                      bool isSaved = state.intList.contains(user.id);
                      return ListTile(
                          title: Text(user.login),
                          subtitle: Text(user.type),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(user.avatarUrl),
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                context
                                    .read<UserBloc>()
                                    .add(UserEvent.saveUser(userModel: user));
                              },
                              icon: SvgPicture.asset(isSaved
                                  ? 'assets/images/svg/saved.svg'
                                  : 'assets/images/svg/unsave.svg')));
                    });
              } else {
                return const SizedBox();
              }
            },
          ));
    });
  }
}
