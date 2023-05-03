import 'package:built_value/serializer.dart';

import '../models/user/user_model.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';
part 'serializer.g.dart';

@SerializersFor([UserModel, UsersModel])
final Serializers serializers =
(_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();