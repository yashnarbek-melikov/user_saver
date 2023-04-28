import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures_user.freezed.dart';

@freezed
abstract class UserFailure with _$UserFailure {
  const factory UserFailure.invalidCredential({
    required String message,
  }) = InvalidCredentials;

  const factory UserFailure.networkFailure({
    required String message,
  }) = NetworkFailure;

  const factory UserFailure.unknown({
    required String message,
  }) = Unknown;
}