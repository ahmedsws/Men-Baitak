// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  StartApp startApp() {
    return const StartApp();
  }

  Authenticate authenticate(User user) {
    return Authenticate(
      user,
    );
  }

  Unauthenticate unauthenticate() {
    return const Unauthenticate();
  }
}

// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result startApp(),
    @required Result authenticate(User user),
    @required Result unauthenticate(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startApp(),
    Result authenticate(User user),
    Result unauthenticate(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startApp(StartApp value),
    @required Result authenticate(Authenticate value),
    @required Result unauthenticate(Unauthenticate value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startApp(StartApp value),
    Result authenticate(Authenticate value),
    Result unauthenticate(Unauthenticate value),
    @required Result orElse(),
  });
}

abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

abstract class $StartAppCopyWith<$Res> {
  factory $StartAppCopyWith(StartApp value, $Res Function(StartApp) then) =
      _$StartAppCopyWithImpl<$Res>;
}

class _$StartAppCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $StartAppCopyWith<$Res> {
  _$StartAppCopyWithImpl(StartApp _value, $Res Function(StartApp) _then)
      : super(_value, (v) => _then(v as StartApp));

  @override
  StartApp get _value => super._value as StartApp;
}

class _$StartApp implements StartApp {
  const _$StartApp();

  @override
  String toString() {
    return 'AuthEvent.startApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StartApp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result startApp(),
    @required Result authenticate(User user),
    @required Result unauthenticate(),
  }) {
    assert(startApp != null);
    assert(authenticate != null);
    assert(unauthenticate != null);
    return startApp();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startApp(),
    Result authenticate(User user),
    Result unauthenticate(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startApp != null) {
      return startApp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startApp(StartApp value),
    @required Result authenticate(Authenticate value),
    @required Result unauthenticate(Unauthenticate value),
  }) {
    assert(startApp != null);
    assert(authenticate != null);
    assert(unauthenticate != null);
    return startApp(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startApp(StartApp value),
    Result authenticate(Authenticate value),
    Result unauthenticate(Unauthenticate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startApp != null) {
      return startApp(this);
    }
    return orElse();
  }
}

abstract class StartApp implements AuthEvent {
  const factory StartApp() = _$StartApp;
}

abstract class $AuthenticateCopyWith<$Res> {
  factory $AuthenticateCopyWith(
          Authenticate value, $Res Function(Authenticate) then) =
      _$AuthenticateCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$AuthenticateCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthenticateCopyWith<$Res> {
  _$AuthenticateCopyWithImpl(
      Authenticate _value, $Res Function(Authenticate) _then)
      : super(_value, (v) => _then(v as Authenticate));

  @override
  Authenticate get _value => super._value as Authenticate;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(Authenticate(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

class _$Authenticate implements Authenticate {
  const _$Authenticate(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthEvent.authenticate(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Authenticate &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $AuthenticateCopyWith<Authenticate> get copyWith =>
      _$AuthenticateCopyWithImpl<Authenticate>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result startApp(),
    @required Result authenticate(User user),
    @required Result unauthenticate(),
  }) {
    assert(startApp != null);
    assert(authenticate != null);
    assert(unauthenticate != null);
    return authenticate(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startApp(),
    Result authenticate(User user),
    Result unauthenticate(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticate != null) {
      return authenticate(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startApp(StartApp value),
    @required Result authenticate(Authenticate value),
    @required Result unauthenticate(Unauthenticate value),
  }) {
    assert(startApp != null);
    assert(authenticate != null);
    assert(unauthenticate != null);
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startApp(StartApp value),
    Result authenticate(Authenticate value),
    Result unauthenticate(Unauthenticate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticate != null) {
      return authenticate(this);
    }
    return orElse();
  }
}

abstract class Authenticate implements AuthEvent {
  const factory Authenticate(User user) = _$Authenticate;

  User get user;
  $AuthenticateCopyWith<Authenticate> get copyWith;
}

abstract class $UnauthenticateCopyWith<$Res> {
  factory $UnauthenticateCopyWith(
          Unauthenticate value, $Res Function(Unauthenticate) then) =
      _$UnauthenticateCopyWithImpl<$Res>;
}

class _$UnauthenticateCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $UnauthenticateCopyWith<$Res> {
  _$UnauthenticateCopyWithImpl(
      Unauthenticate _value, $Res Function(Unauthenticate) _then)
      : super(_value, (v) => _then(v as Unauthenticate));

  @override
  Unauthenticate get _value => super._value as Unauthenticate;
}

class _$Unauthenticate implements Unauthenticate {
  const _$Unauthenticate();

  @override
  String toString() {
    return 'AuthEvent.unauthenticate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthenticate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result startApp(),
    @required Result authenticate(User user),
    @required Result unauthenticate(),
  }) {
    assert(startApp != null);
    assert(authenticate != null);
    assert(unauthenticate != null);
    return unauthenticate();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result startApp(),
    Result authenticate(User user),
    Result unauthenticate(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticate != null) {
      return unauthenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result startApp(StartApp value),
    @required Result authenticate(Authenticate value),
    @required Result unauthenticate(Unauthenticate value),
  }) {
    assert(startApp != null);
    assert(authenticate != null);
    assert(unauthenticate != null);
    return unauthenticate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result startApp(StartApp value),
    Result authenticate(Authenticate value),
    Result unauthenticate(Unauthenticate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticate != null) {
      return unauthenticate(this);
    }
    return orElse();
  }
}

abstract class Unauthenticate implements AuthEvent {
  const factory Unauthenticate() = _$Unauthenticate;
}
