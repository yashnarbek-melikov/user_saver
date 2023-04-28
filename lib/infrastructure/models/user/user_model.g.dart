// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserModel> _$userModelSerializer = new _$UserModelSerializer();

class _$UserModelSerializer implements StructuredSerializer<UserModel> {
  @override
  final Iterable<Type> types = const [UserModel, _$UserModel];
  @override
  final String wireName = 'UserModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'login',
      serializers.serialize(object.login,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'node_id',
      serializers.serialize(object.nodeId,
          specifiedType: const FullType(String)),
      'avatar_url',
      serializers.serialize(object.avatarUrl,
          specifiedType: const FullType(String)),
      'gravatar_id',
      serializers.serialize(object.gravatarId,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'html_url',
      serializers.serialize(object.htmlUrl,
          specifiedType: const FullType(String)),
      'followers_url',
      serializers.serialize(object.followersUrl,
          specifiedType: const FullType(String)),
      'following_url',
      serializers.serialize(object.followingUrl,
          specifiedType: const FullType(String)),
      'gists_url',
      serializers.serialize(object.gistsUrl,
          specifiedType: const FullType(String)),
      'starred_url',
      serializers.serialize(object.starredUrl,
          specifiedType: const FullType(String)),
      'subscriptions_url',
      serializers.serialize(object.subscriptionsUrl,
          specifiedType: const FullType(String)),
      'organizations_url',
      serializers.serialize(object.organizationsUrl,
          specifiedType: const FullType(String)),
      'repos_url',
      serializers.serialize(object.reposUrl,
          specifiedType: const FullType(String)),
      'events_url',
      serializers.serialize(object.eventsUrl,
          specifiedType: const FullType(String)),
      'received_events_url',
      serializers.serialize(object.receivedEventsUrl,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'site_admin',
      serializers.serialize(object.siteAdmin,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  UserModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'avatar_url':
          result.avatarUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'gravatar_id':
          result.gravatarId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'followers_url':
          result.followersUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'following_url':
          result.followingUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'gists_url':
          result.gistsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'starred_url':
          result.starredUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'subscriptions_url':
          result.subscriptionsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'organizations_url':
          result.organizationsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'repos_url':
          result.reposUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'events_url':
          result.eventsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'received_events_url':
          result.receivedEventsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'site_admin':
          result.siteAdmin = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$UserModel extends UserModel {
  @override
  final String login;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String avatarUrl;
  @override
  final String gravatarId;
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final String followersUrl;
  @override
  final String followingUrl;
  @override
  final String gistsUrl;
  @override
  final String starredUrl;
  @override
  final String subscriptionsUrl;
  @override
  final String organizationsUrl;
  @override
  final String reposUrl;
  @override
  final String eventsUrl;
  @override
  final String receivedEventsUrl;
  @override
  final String type;
  @override
  final bool siteAdmin;

  factory _$UserModel([void Function(UserModelBuilder)? updates]) =>
      (new UserModelBuilder()..update(updates))._build();

  _$UserModel._(
      {required this.login,
      required this.id,
      required this.nodeId,
      required this.avatarUrl,
      required this.gravatarId,
      required this.url,
      required this.htmlUrl,
      required this.followersUrl,
      required this.followingUrl,
      required this.gistsUrl,
      required this.starredUrl,
      required this.subscriptionsUrl,
      required this.organizationsUrl,
      required this.reposUrl,
      required this.eventsUrl,
      required this.receivedEventsUrl,
      required this.type,
      required this.siteAdmin})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(login, r'UserModel', 'login');
    BuiltValueNullFieldError.checkNotNull(id, r'UserModel', 'id');
    BuiltValueNullFieldError.checkNotNull(nodeId, r'UserModel', 'nodeId');
    BuiltValueNullFieldError.checkNotNull(avatarUrl, r'UserModel', 'avatarUrl');
    BuiltValueNullFieldError.checkNotNull(
        gravatarId, r'UserModel', 'gravatarId');
    BuiltValueNullFieldError.checkNotNull(url, r'UserModel', 'url');
    BuiltValueNullFieldError.checkNotNull(htmlUrl, r'UserModel', 'htmlUrl');
    BuiltValueNullFieldError.checkNotNull(
        followersUrl, r'UserModel', 'followersUrl');
    BuiltValueNullFieldError.checkNotNull(
        followingUrl, r'UserModel', 'followingUrl');
    BuiltValueNullFieldError.checkNotNull(gistsUrl, r'UserModel', 'gistsUrl');
    BuiltValueNullFieldError.checkNotNull(
        starredUrl, r'UserModel', 'starredUrl');
    BuiltValueNullFieldError.checkNotNull(
        subscriptionsUrl, r'UserModel', 'subscriptionsUrl');
    BuiltValueNullFieldError.checkNotNull(
        organizationsUrl, r'UserModel', 'organizationsUrl');
    BuiltValueNullFieldError.checkNotNull(reposUrl, r'UserModel', 'reposUrl');
    BuiltValueNullFieldError.checkNotNull(eventsUrl, r'UserModel', 'eventsUrl');
    BuiltValueNullFieldError.checkNotNull(
        receivedEventsUrl, r'UserModel', 'receivedEventsUrl');
    BuiltValueNullFieldError.checkNotNull(type, r'UserModel', 'type');
    BuiltValueNullFieldError.checkNotNull(siteAdmin, r'UserModel', 'siteAdmin');
  }

  @override
  UserModel rebuild(void Function(UserModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserModelBuilder toBuilder() => new UserModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserModel &&
        login == other.login &&
        id == other.id &&
        nodeId == other.nodeId &&
        avatarUrl == other.avatarUrl &&
        gravatarId == other.gravatarId &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        followersUrl == other.followersUrl &&
        followingUrl == other.followingUrl &&
        gistsUrl == other.gistsUrl &&
        starredUrl == other.starredUrl &&
        subscriptionsUrl == other.subscriptionsUrl &&
        organizationsUrl == other.organizationsUrl &&
        reposUrl == other.reposUrl &&
        eventsUrl == other.eventsUrl &&
        receivedEventsUrl == other.receivedEventsUrl &&
        type == other.type &&
        siteAdmin == other.siteAdmin;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            0,
                                                                            login
                                                                                .hashCode),
                                                                        id
                                                                            .hashCode),
                                                                    nodeId
                                                                        .hashCode),
                                                                avatarUrl
                                                                    .hashCode),
                                                            gravatarId
                                                                .hashCode),
                                                        url.hashCode),
                                                    htmlUrl.hashCode),
                                                followersUrl.hashCode),
                                            followingUrl.hashCode),
                                        gistsUrl.hashCode),
                                    starredUrl.hashCode),
                                subscriptionsUrl.hashCode),
                            organizationsUrl.hashCode),
                        reposUrl.hashCode),
                    eventsUrl.hashCode),
                receivedEventsUrl.hashCode),
            type.hashCode),
        siteAdmin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserModel')
          ..add('login', login)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('avatarUrl', avatarUrl)
          ..add('gravatarId', gravatarId)
          ..add('url', url)
          ..add('htmlUrl', htmlUrl)
          ..add('followersUrl', followersUrl)
          ..add('followingUrl', followingUrl)
          ..add('gistsUrl', gistsUrl)
          ..add('starredUrl', starredUrl)
          ..add('subscriptionsUrl', subscriptionsUrl)
          ..add('organizationsUrl', organizationsUrl)
          ..add('reposUrl', reposUrl)
          ..add('eventsUrl', eventsUrl)
          ..add('receivedEventsUrl', receivedEventsUrl)
          ..add('type', type)
          ..add('siteAdmin', siteAdmin))
        .toString();
  }
}

class UserModelBuilder implements Builder<UserModel, UserModelBuilder> {
  _$UserModel? _$v;

  String? _login;
  String? get login => _$this._login;
  set login(String? login) => _$this._login = login;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _nodeId;
  String? get nodeId => _$this._nodeId;
  set nodeId(String? nodeId) => _$this._nodeId = nodeId;

  String? _avatarUrl;
  String? get avatarUrl => _$this._avatarUrl;
  set avatarUrl(String? avatarUrl) => _$this._avatarUrl = avatarUrl;

  String? _gravatarId;
  String? get gravatarId => _$this._gravatarId;
  set gravatarId(String? gravatarId) => _$this._gravatarId = gravatarId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _htmlUrl;
  String? get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String? htmlUrl) => _$this._htmlUrl = htmlUrl;

  String? _followersUrl;
  String? get followersUrl => _$this._followersUrl;
  set followersUrl(String? followersUrl) => _$this._followersUrl = followersUrl;

  String? _followingUrl;
  String? get followingUrl => _$this._followingUrl;
  set followingUrl(String? followingUrl) => _$this._followingUrl = followingUrl;

  String? _gistsUrl;
  String? get gistsUrl => _$this._gistsUrl;
  set gistsUrl(String? gistsUrl) => _$this._gistsUrl = gistsUrl;

  String? _starredUrl;
  String? get starredUrl => _$this._starredUrl;
  set starredUrl(String? starredUrl) => _$this._starredUrl = starredUrl;

  String? _subscriptionsUrl;
  String? get subscriptionsUrl => _$this._subscriptionsUrl;
  set subscriptionsUrl(String? subscriptionsUrl) =>
      _$this._subscriptionsUrl = subscriptionsUrl;

  String? _organizationsUrl;
  String? get organizationsUrl => _$this._organizationsUrl;
  set organizationsUrl(String? organizationsUrl) =>
      _$this._organizationsUrl = organizationsUrl;

  String? _reposUrl;
  String? get reposUrl => _$this._reposUrl;
  set reposUrl(String? reposUrl) => _$this._reposUrl = reposUrl;

  String? _eventsUrl;
  String? get eventsUrl => _$this._eventsUrl;
  set eventsUrl(String? eventsUrl) => _$this._eventsUrl = eventsUrl;

  String? _receivedEventsUrl;
  String? get receivedEventsUrl => _$this._receivedEventsUrl;
  set receivedEventsUrl(String? receivedEventsUrl) =>
      _$this._receivedEventsUrl = receivedEventsUrl;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  bool? _siteAdmin;
  bool? get siteAdmin => _$this._siteAdmin;
  set siteAdmin(bool? siteAdmin) => _$this._siteAdmin = siteAdmin;

  UserModelBuilder();

  UserModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _login = $v.login;
      _id = $v.id;
      _nodeId = $v.nodeId;
      _avatarUrl = $v.avatarUrl;
      _gravatarId = $v.gravatarId;
      _url = $v.url;
      _htmlUrl = $v.htmlUrl;
      _followersUrl = $v.followersUrl;
      _followingUrl = $v.followingUrl;
      _gistsUrl = $v.gistsUrl;
      _starredUrl = $v.starredUrl;
      _subscriptionsUrl = $v.subscriptionsUrl;
      _organizationsUrl = $v.organizationsUrl;
      _reposUrl = $v.reposUrl;
      _eventsUrl = $v.eventsUrl;
      _receivedEventsUrl = $v.receivedEventsUrl;
      _type = $v.type;
      _siteAdmin = $v.siteAdmin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserModel;
  }

  @override
  void update(void Function(UserModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserModel build() => _build();

  _$UserModel _build() {
    final _$result = _$v ??
        new _$UserModel._(
            login: BuiltValueNullFieldError.checkNotNull(
                login, r'UserModel', 'login'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'UserModel', 'id'),
            nodeId: BuiltValueNullFieldError.checkNotNull(
                nodeId, r'UserModel', 'nodeId'),
            avatarUrl: BuiltValueNullFieldError.checkNotNull(
                avatarUrl, r'UserModel', 'avatarUrl'),
            gravatarId: BuiltValueNullFieldError.checkNotNull(
                gravatarId, r'UserModel', 'gravatarId'),
            url:
                BuiltValueNullFieldError.checkNotNull(url, r'UserModel', 'url'),
            htmlUrl: BuiltValueNullFieldError.checkNotNull(
                htmlUrl, r'UserModel', 'htmlUrl'),
            followersUrl: BuiltValueNullFieldError.checkNotNull(
                followersUrl, r'UserModel', 'followersUrl'),
            followingUrl: BuiltValueNullFieldError.checkNotNull(
                followingUrl, r'UserModel', 'followingUrl'),
            gistsUrl: BuiltValueNullFieldError.checkNotNull(
                gistsUrl, r'UserModel', 'gistsUrl'),
            starredUrl: BuiltValueNullFieldError.checkNotNull(
                starredUrl, r'UserModel', 'starredUrl'),
            subscriptionsUrl: BuiltValueNullFieldError.checkNotNull(
                subscriptionsUrl, r'UserModel', 'subscriptionsUrl'),
            organizationsUrl: BuiltValueNullFieldError.checkNotNull(organizationsUrl, r'UserModel', 'organizationsUrl'),
            reposUrl: BuiltValueNullFieldError.checkNotNull(reposUrl, r'UserModel', 'reposUrl'),
            eventsUrl: BuiltValueNullFieldError.checkNotNull(eventsUrl, r'UserModel', 'eventsUrl'),
            receivedEventsUrl: BuiltValueNullFieldError.checkNotNull(receivedEventsUrl, r'UserModel', 'receivedEventsUrl'),
            type: BuiltValueNullFieldError.checkNotNull(type, r'UserModel', 'type'),
            siteAdmin: BuiltValueNullFieldError.checkNotNull(siteAdmin, r'UserModel', 'siteAdmin'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
