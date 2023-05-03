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
    on<_SaveUser>(_saveUser);
    on<_GetUserHistory>(_getUserHistory);
    on<_IsSaved>(_isSaved);
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
      add(UserEvent.isSaved());
      return emit(state.copyWith(userModel: r));
    });
  }

  Future<void> _saveUser(
    _SaveUser _saveUser,
    Emitter<UserState> emit,
  ) async {
    EasyLoading.show();
    UsersModel usersModel = await _userRepo.saveUser(_saveUser.userModel);
    emit(state.copyWith(usersModel: usersModel));
    EasyLoading.showSuccess("success".tr());
    add(UserEvent.isSaved());
  }

  Future<void> _isSaved(_IsSaved _isSaved, Emitter<UserState> emit) async {
    UsersModel? usersModel = await _userRepo.getUsersHive();
    List<UserModel> users = List.from(state.userModel ?? []);
    if (usersModel != null) {
      List<int> index = users
          .where((element) =>
              usersModel.users.map((p0) => p0.id).toList().contains(element.id))
          .map((e) => e.id)
          .toList();
      emit(state.copyWith(intList: index));
    }
  }

  Future<void> _getUserHistory(
    _GetUserHistory getUserHistory,
    Emitter<UserState> emit,
  ) async {
    EasyLoading.show();
    UsersModel? usersModel = await _userRepo.getUsersHive();
    emit(state.copyWith(usersModel: usersModel));
    EasyLoading.dismiss();
  }
}
