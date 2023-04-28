// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_apis.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$GetUserService extends GetUserService {
  _$GetUserService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = GetUserService;

  @override
  Future<Response<BuiltList<UserModel>>> getUsers() {
    final $url = 'users';
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<BuiltList<UserModel>, UserModel>($request);
  }
}
