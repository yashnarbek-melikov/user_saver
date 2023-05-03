import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hive/hive.dart';
import 'package:user_saver/domain/user/failures_user.dart';
import 'package:user_saver/domain/user/user_facade.dart';
import 'package:user_saver/infrastructure/apis/user_apis.dart';
import 'package:user_saver/infrastructure/models/user/user_model.dart';
import 'package:built_collection/built_collection.dart';

import '../core/exceptions.dart';

class UserRepo implements UserFacade {

  final GetUserService _getUserService;

  UserRepo(this._getUserService);

  @override
  Future<Either<UserFailure, List<UserModel>>> getUsers() async {
    try {
      final res = await _getUserService.getUsers();
      if (res.isSuccessful) {
        assert(res.body != null);
        return right(res.body!.toList());
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    } catch (e) {
      print(e);
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<UsersModel> saveUser(UserModel userModel) async {
    var box = await Hive.openBox('myBox');
    String? name;
    UsersModel? usersModel;
    name = await box.get("saved_users");
    if (name != null && name.isNotEmpty) {
      usersModel = UsersModel.fromJson(name);
      if (usersModel != null) {
        List<UserModel> _users = usersModel.users.toList();
        if (_users.indexWhere(
                (element) => element.id == userModel.id) ==
            -1) {
          _users.add(userModel);
        } else {
          _users.remove(userModel);
        }
        usersModel = UsersModel((p0) => p0..users = _users.build().toBuilder());
      } else {
        usersModel = UsersModel((p0) =>
            p0..users = <UserModel>[userModel].build().toBuilder());
      }
    } else {
      usersModel = UsersModel((p0) =>
          p0..users = <UserModel>[userModel].build().toBuilder());
    }
    await box.put("saved_users", usersModel.toJson());

    return usersModel;
  }

  @override
  Future<UsersModel?> getUsersHive() async {
    var box = await Hive.openBox('myBox');
    String? name;
    UsersModel? usersModel;
    name = await box.get("saved_users");
    if (name != null && name.isNotEmpty) {
      usersModel = UsersModel.fromJson(name);
      if (usersModel != null) {
        return usersModel;
      }
    }
    return null;
  }
}