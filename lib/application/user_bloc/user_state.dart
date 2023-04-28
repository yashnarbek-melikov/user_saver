part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    @Default(null) List<UserModel>? userModel,
    // @Default(null) UsersModel? usersModel,
  }) = _SignInState;
}
