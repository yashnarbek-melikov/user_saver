import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
              if (state.userModel == null) {
                return const SizedBox();
              } else {
                List<UserModel> userModelList = state.userModel!;
                return Text(userModelList.length.toString());

                  // ListView.builder(
                  //   shrinkWrap: true,
                  //   itemCount: usersModel.users.length,
                  //   itemBuilder: (context, index) {
                  //     UserModel user = usersModel.users[index];
                  //     return ListTile(
                  //         title: Text(user.login),
                  //         subtitle: Text(user.followersUrl),
                  //         leading: Image.network(user.avatarUrl),
                  //         trailing: IconButton(
                  //             onPressed: () {
                  //               setState(() {
                  //                 // if (user.isSave == false) {
                  //                 //   user.isSave = true;
                  //                 // } else {
                  //                 //   user.isSave = false;
                  //                 // }
                  //               });
                  //             },
                  //             icon: SvgPicture.asset(
                  //                 'assets/images/svg/unsave.svg')));
                  //   });
              }
            },
          ));
    });
  }
}
