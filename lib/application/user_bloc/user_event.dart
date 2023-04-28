part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {

  factory UserEvent.getUsers() = _GetUsers;

  factory UserEvent.saveUser({
    required UserModel userModel
  }) = _SaveUser;

  factory UserEvent.getUserHistory() = _GetUserHistory;

}