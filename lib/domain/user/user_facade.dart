import 'package:dartz/dartz.dart';
import 'package:user_saver/infrastructure/models/user/user_model.dart';

import 'failures_user.dart';

abstract class UserFacade {
  Future<Either<UserFailure, List<UserModel>>> getUsers();
  Future<UsersModel?> saveUser(UserModel userModel);
  Future<UsersModel?> getUsersHive();
}