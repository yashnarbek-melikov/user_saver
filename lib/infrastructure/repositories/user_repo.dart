import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:user_saver/domain/user/failures_user.dart';
import 'package:user_saver/domain/user/user_facade.dart';
import 'package:user_saver/infrastructure/apis/user_apis.dart';
import 'package:user_saver/infrastructure/models/user/user_model.dart';

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
        // List<UserModel>? userModel = UserModel.fromJson(res.bodyString);
        return right(res.body!.toList());
        // if (userModel != null) {
        //
        // } else {
        //   return left(Unknown(message: 'unknown_error'.tr()));
        // }
        // return right(UserModel((p0)=>p0.user=res.body!.toBuiltList().toBuilder()));
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
}