import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../../serializers/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'user_model.g.dart';

abstract class UserModel implements Built<UserModel, UserModelBuilder> {
  UserModel._();

  factory UserModel([Function(UserModelBuilder b) updates]) = _$UserModel;

  @BuiltValueField(wireName: 'login')
  String get login;
  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'node_id')
  String get nodeId;
  @BuiltValueField(wireName: 'avatar_url')
  String get avatarUrl;
  @BuiltValueField(wireName: 'gravatar_id')
  String get gravatarId;
  @BuiltValueField(wireName: 'url')
  String get url;
  @BuiltValueField(wireName: 'html_url')
  String get htmlUrl;
  @BuiltValueField(wireName: 'followers_url')
  String get followersUrl;
  @BuiltValueField(wireName: 'following_url')
  String get followingUrl;
  @BuiltValueField(wireName: 'gists_url')
  String get gistsUrl;
  @BuiltValueField(wireName: 'starred_url')
  String get starredUrl;
  @BuiltValueField(wireName: 'subscriptions_url')
  String get subscriptionsUrl;
  @BuiltValueField(wireName: 'organizations_url')
  String get organizationsUrl;
  @BuiltValueField(wireName: 'repos_url')
  String get reposUrl;
  @BuiltValueField(wireName: 'events_url')
  String get eventsUrl;
  @BuiltValueField(wireName: 'received_events_url')
  String get receivedEventsUrl;
  @BuiltValueField(wireName: 'type')
  String get type;
  @BuiltValueField(wireName: 'site_admin')
  bool get siteAdmin;

  String toJson() {
    return json.encode(serializers.serializeWith(UserModel.serializer, this));
  }

  static UserModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserModel.serializer, json.decode(jsonString));
  }

  static Serializer<UserModel> get serializer => _$userModelSerializer;
}

// abstract class UsersModel implements Built<UsersModel, UsersModelBuilder> {
//   BuiltList<UserModel> get users;
//
//   UsersModel._();
//   factory UsersModel([Function(UsersModelBuilder b) updates]) = _$UsersModel;
//
//   String toJson() {
//     return json.encode(serializers.serializeWith(UsersModel.serializer, this));
//   }
//
//   static UsersModel? fromJson(String jsonString) {
//     return serializers.deserializeWith(
//         UsersModel.serializer, json.decode(jsonString));
//   }
//
//   static Serializer<UsersModel> get serializer => _$usersModelSerializer;
// }


