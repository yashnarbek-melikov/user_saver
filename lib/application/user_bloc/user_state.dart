part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    @Default(null) List<UserModel>? userModel,
    @Default(null) UsersModel? usersModel,
    @Default([]) List<int> intList,
  }) = _SignInState;
}
