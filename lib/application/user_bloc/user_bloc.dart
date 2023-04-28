import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hive/hive.dart';
import 'package:user_saver/infrastructure/repositories/user_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:built_collection/built_collection.dart';

import '../../infrastructure/models/user/user_model.dart';

part 'user_bloc.freezed.dart';

part 'user_event.dart';

part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepo _userRepo;

  UserBloc(this._userRepo) : super(const _SignInState()) {
    on<_GetUsers>(_getUsers);
    // on<_SaveUser>(_saveUser);
    // on<_GetUserHistory>(_getUserHistory);
  }

  Future<void> _getUsers(
      _GetUsers _getUsers,
      Emitter<UserState> emit,
      ) async {
    EasyLoading.show();
    final res = await _userRepo.getUsers();
    res.fold((l) async {
      EasyLoading.showError(l.message);
      return;
    }, (r) async {
      EasyLoading.dismiss();
      return emit(state.copyWith(userModel: r));
    });
  }

  // Future<void> _saveUser(
  //     _SaveUser _saveUser,
  //     Emitter<UserState> emit,
  //     ) async {
  //   EasyLoading.show();
  //   var box = await Hive.openBox('myBox');
  //   String? name;
  //   UsersModel? usersModel;
  //   name = await box.get("saved_cats");
  //   if (name != null && name.isNotEmpty) {
  //     usersModel = UsersModel.fromJson(name);
  //     if (usersModel != null) {
  //       List<UserModel> _users = usersModel.users.toList();
  //       if (_users
  //           .indexWhere((element) => element.id == _saveUser.userModel.id) ==
  //           -1) {
  //         _users.add(_saveUser.userModel);
  //       }
  //       usersModel = UsersModel((p0) => p0..users = _users.build().toBuilder());
  //     } else {
  //       usersModel = UsersModel((p0) =>
  //       p0..users = <UserModel>[_saveUser.userModel].build().toBuilder());
  //     }
  //   } else {
  //     usersModel = UsersModel((p0) =>
  //     p0..users = <UserModel>[_saveUser.userModel].build().toBuilder());
  //   }
  //   await box.put("saved_cats", usersModel.toJson());
  //   emit(state.copyWith(usersModel: usersModel));
  //   EasyLoading.showSuccess("success".tr());
  // }

  // Future<void> _getUserHistory(
  //     _GetUserHistory _getUserHistory,
  //     Emitter<UserState> emit,
  //     ) async {
  //   EasyLoading.show();
  //   var box = await Hive.openBox('myBox');
  //   String? name;
  //   UsersModel? usersModel;
  //   name = await box.get("saved_users");
  //   if (name != null && name.isNotEmpty) {
  //     usersModel = UsersModel.fromJson(name);
  //     if (usersModel != null) {
  //       emit(state.copyWith(usersModel: usersModel));
  //     }
  //   }
  //   EasyLoading.dismiss();
  // }
}