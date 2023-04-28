import 'package:chopper/chopper.dart';

import '../core/built_value_converter.dart';
import '../core/interceptors.dart';
import '../models/user/user_model.dart';
import 'package:built_collection/built_collection.dart';
part 'user_apis.chopper.dart';

@ChopperApi(baseUrl: 'users')
abstract class GetUserService extends ChopperService {
  @Get()
  Future<Response<BuiltList<UserModel>>> getUsers();

  static GetUserService create() =>
      _$GetUserService(_Client('https://api.github.com/', true));
}


class _Client extends ChopperClient {
  _Client(String baseUrl, bool useInterceptors)
      : super(
      baseUrl: baseUrl,
      interceptors: useInterceptors
          ? [
        HttpLoggingInterceptor(),
        CurlInterceptor(),
        NetworkInterceptor(),
        BackendInterceptor(),
      ]
          : const [],
      converter: BuiltValueConverter(),
      errorConverter: ErrorMyConverter());
}