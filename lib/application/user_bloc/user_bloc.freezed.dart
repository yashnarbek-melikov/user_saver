// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserEventTearOff {
  const _$UserEventTearOff();

  _GetUsers getUsers() {
    return _GetUsers();
  }

  _SaveUser saveUser({required UserModel userModel}) {
    return _SaveUser(
      userModel: userModel,
    );
  }

  _GetUserHistory getUserHistory() {
    return _GetUserHistory();
  }

  _IsSaved isSaved() {
    return _IsSaved();
  }
}

/// @nodoc
const $UserEvent = _$UserEventTearOff();

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUsers,
    required TResult Function(UserModel userModel) saveUser,
    required TResult Function() getUserHistory,
    required TResult Function() isSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(UserModel userModel)? saveUser,
    TResult Function()? getUserHistory,
    TResult Function()? isSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(UserModel userModel)? saveUser,
    TResult Function()? getUserHistory,
    TResult Function()? isSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_GetUserHistory value) getUserHistory,
    required TResult Function(_IsSaved value) isSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_GetUserHistory value)? getUserHistory,
    TResult Function(_IsSaved value)? isSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_GetUserHistory value)? getUserHistory,
    TResult Function(_IsSaved value)? isSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

/// @nodoc
abstract class _$GetUsersCopyWith<$Res> {
  factory _$GetUsersCopyWith(_GetUsers value, $Res Function(_GetUsers) then) =
      __$GetUsersCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetUsersCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$GetUsersCopyWith<$Res> {
  __$GetUsersCopyWithImpl(_GetUsers _value, $Res Function(_GetUsers) _then)
      : super(_value, (v) => _then(v as _GetUsers));

  @override
  _GetUsers get _value => super._value as _GetUsers;
}

/// @nodoc

class _$_GetUsers implements _GetUsers {
  _$_GetUsers();

  @override
  String toString() {
    return 'UserEvent.getUsers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetUsers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUsers,
    required TResult Function(UserModel userModel) saveUser,
    required TResult Function() getUserHistory,
    required TResult Function() isSaved,
  }) {
    return getUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(UserModel userModel)? saveUser,
    TResult Function()? getUserHistory,
    TResult Function()? isSaved,
  }) {
    return getUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(UserModel userModel)? saveUser,
    TResult Function()? getUserHistory,
    TResult Function()? isSaved,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_GetUserHistory value) getUserHistory,
    required TResult Function(_IsSaved value) isSaved,
  }) {
    return getUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_GetUserHistory value)? getUserHistory,
    TResult Function(_IsSaved value)? isSaved,
  }) {
    return getUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_GetUserHistory value)? getUserHistory,
    TResult Function(_IsSaved value)? isSaved,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(this);
    }
    return orElse();
  }
}

abstract class _GetUsers implements UserEvent {
  factory _GetUsers() = _$_GetUsers;
}

/// @nodoc
abstract class _$SaveUserCopyWith<$Res> {
  factory _$SaveUserCopyWith(_SaveUser value, $Res Function(_SaveUser) then) =
      __$SaveUserCopyWithImpl<$Res>;
  $Res call({UserModel userModel});
}

/// @nodoc
class __$SaveUserCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$SaveUserCopyWith<$Res> {
  __$SaveUserCopyWithImpl(_SaveUser _value, $Res Function(_SaveUser) _then)
      : super(_value, (v) => _then(v as _SaveUser));

  @override
  _SaveUser get _value => super._value as _SaveUser;

  @override
  $Res call({
    Object? userModel = freezed,
  }) {
    return _then(_SaveUser(
      userModel: userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$_SaveUser implements _SaveUser {
  _$_SaveUser({required this.userModel});

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'UserEvent.saveUser(userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveUser &&
            const DeepCollectionEquality().equals(other.userModel, userModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userModel));

  @JsonKey(ignore: true)
  @override
  _$SaveUserCopyWith<_SaveUser> get copyWith =>
      __$SaveUserCopyWithImpl<_SaveUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUsers,
    required TResult Function(UserModel userModel) saveUser,
    required TResult Function() getUserHistory,
    required TResult Function() isSaved,
  }) {
    return saveUser(userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(UserModel userModel)? saveUser,
    TResult Function()? getUserHistory,
    TResult Function()? isSaved,
  }) {
    return saveUser?.call(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(UserModel userModel)? saveUser,
    TResult Function()? getUserHistory,
    TResult Function()? isSaved,
    required TResult orElse(),
  }) {
    if (saveUser != null) {
      return saveUser(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_GetUserHistory value) getUserHistory,
    required TResult Function(_IsSaved value) isSaved,
  }) {
    return saveUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_GetUserHistory value)? getUserHistory,
    TResult Function(_IsSaved value)? isSaved,
  }) {
    return saveUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_GetUserHistory value)? getUserHistory,
    TResult Function(_IsSaved value)? isSaved,
    required TResult orElse(),
  }) {
    if (saveUser != null) {
      return saveUser(this);
    }
    return orElse();
  }
}

abstract class _SaveUser implements UserEvent {
  factory _SaveUser({required UserModel userModel}) = _$_SaveUser;

  UserModel get userModel;
  @JsonKey(ignore: true)
  _$SaveUserCopyWith<_SaveUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetUserHistoryCopyWith<$Res> {
  factory _$GetUserHistoryCopyWith(
          _GetUserHistory value, $Res Function(_GetUserHistory) then) =
      __$GetUserHistoryCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetUserHistoryCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$GetUserHistoryCopyWith<$Res> {
  __$GetUserHistoryCopyWithImpl(
      _GetUserHistory _value, $Res Function(_GetUserHistory) _then)
      : super(_value, (v) => _then(v as _GetUserHistory));

  @override
  _GetUserHistory get _value => super._value as _GetUserHistory;
}

/// @nodoc

class _$_GetUserHistory implements _GetUserHistory {
  _$_GetUserHistory();

  @override
  String toString() {
    return 'UserEvent.getUserHistory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetUserHistory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUsers,
    required TResult Function(UserModel userModel) saveUser,
    required TResult Function() getUserHistory,
    required TResult Function() isSaved,
  }) {
    return getUserHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(UserModel userModel)? saveUser,
    TResult Function()? getUserHistory,
    TResult Function()? isSaved,
  }) {
    return getUserHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(UserModel userModel)? saveUser,
    TResult Function()? getUserHistory,
    TResult Function()? isSaved,
    required TResult orElse(),
  }) {
    if (getUserHistory != null) {
      return getUserHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_GetUserHistory value) getUserHistory,
    required TResult Function(_IsSaved value) isSaved,
  }) {
    return getUserHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_GetUserHistory value)? getUserHistory,
    TResult Function(_IsSaved value)? isSaved,
  }) {
    return getUserHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_GetUserHistory value)? getUserHistory,
    TResult Function(_IsSaved value)? isSaved,
    required TResult orElse(),
  }) {
    if (getUserHistory != null) {
      return getUserHistory(this);
    }
    return orElse();
  }
}

abstract class _GetUserHistory implements UserEvent {
  factory _GetUserHistory() = _$_GetUserHistory;
}

/// @nodoc
abstract class _$IsSavedCopyWith<$Res> {
  factory _$IsSavedCopyWith(_IsSaved value, $Res Function(_IsSaved) then) =
      __$IsSavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsSavedCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$IsSavedCopyWith<$Res> {
  __$IsSavedCopyWithImpl(_IsSaved _value, $Res Function(_IsSaved) _then)
      : super(_value, (v) => _then(v as _IsSaved));

  @override
  _IsSaved get _value => super._value as _IsSaved;
}

/// @nodoc

class _$_IsSaved implements _IsSaved {
  _$_IsSaved();

  @override
  String toString() {
    return 'UserEvent.isSaved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _IsSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUsers,
    required TResult Function(UserModel userModel) saveUser,
    required TResult Function() getUserHistory,
    required TResult Function() isSaved,
  }) {
    return isSaved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(UserModel userModel)? saveUser,
    TResult Function()? getUserHistory,
    TResult Function()? isSaved,
  }) {
    return isSaved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(UserModel userModel)? saveUser,
    TResult Function()? getUserHistory,
    TResult Function()? isSaved,
    required TResult orElse(),
  }) {
    if (isSaved != null) {
      return isSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_GetUserHistory value) getUserHistory,
    required TResult Function(_IsSaved value) isSaved,
  }) {
    return isSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_GetUserHistory value)? getUserHistory,
    TResult Function(_IsSaved value)? isSaved,
  }) {
    return isSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_GetUserHistory value)? getUserHistory,
    TResult Function(_IsSaved value)? isSaved,
    required TResult orElse(),
  }) {
    if (isSaved != null) {
      return isSaved(this);
    }
    return orElse();
  }
}

abstract class _IsSaved implements UserEvent {
  factory _IsSaved() = _$_IsSaved;
}

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  _SignInState call(
      {List<UserModel>? userModel = null,
      UsersModel? usersModel = null,
      List<int> intList = const []}) {
    return _SignInState(
      userModel: userModel,
      usersModel: usersModel,
      intList: intList,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  List<UserModel>? get userModel => throw _privateConstructorUsedError;
  UsersModel? get usersModel => throw _privateConstructorUsedError;
  List<int> get intList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call(
      {List<UserModel>? userModel, UsersModel? usersModel, List<int> intList});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object? userModel = freezed,
    Object? usersModel = freezed,
    Object? intList = freezed,
  }) {
    return _then(_value.copyWith(
      userModel: userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      usersModel: usersModel == freezed
          ? _value.usersModel
          : usersModel // ignore: cast_nullable_to_non_nullable
              as UsersModel?,
      intList: intList == freezed
          ? _value.intList
          : intList // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$SignInStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(
          _SignInState value, $Res Function(_SignInState) then) =
      __$SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<UserModel>? userModel, UsersModel? usersModel, List<int> intList});
}

/// @nodoc
class __$SignInStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$SignInStateCopyWith<$Res> {
  __$SignInStateCopyWithImpl(
      _SignInState _value, $Res Function(_SignInState) _then)
      : super(_value, (v) => _then(v as _SignInState));

  @override
  _SignInState get _value => super._value as _SignInState;

  @override
  $Res call({
    Object? userModel = freezed,
    Object? usersModel = freezed,
    Object? intList = freezed,
  }) {
    return _then(_SignInState(
      userModel: userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      usersModel: usersModel == freezed
          ? _value.usersModel
          : usersModel // ignore: cast_nullable_to_non_nullable
              as UsersModel?,
      intList: intList == freezed
          ? _value.intList
          : intList // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState(
      {this.userModel = null, this.usersModel = null, this.intList = const []});

  @JsonKey()
  @override
  final List<UserModel>? userModel;
  @JsonKey()
  @override
  final UsersModel? usersModel;
  @JsonKey()
  @override
  final List<int> intList;

  @override
  String toString() {
    return 'UserState(userModel: $userModel, usersModel: $usersModel, intList: $intList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInState &&
            const DeepCollectionEquality().equals(other.userModel, userModel) &&
            const DeepCollectionEquality()
                .equals(other.usersModel, usersModel) &&
            const DeepCollectionEquality().equals(other.intList, intList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userModel),
      const DeepCollectionEquality().hash(usersModel),
      const DeepCollectionEquality().hash(intList));

  @JsonKey(ignore: true)
  @override
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);
}

abstract class _SignInState implements UserState {
  const factory _SignInState(
      {List<UserModel>? userModel,
      UsersModel? usersModel,
      List<int> intList}) = _$_SignInState;

  @override
  List<UserModel>? get userModel;
  @override
  UsersModel? get usersModel;
  @override
  List<int> get intList;
  @override
  @JsonKey(ignore: true)
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
