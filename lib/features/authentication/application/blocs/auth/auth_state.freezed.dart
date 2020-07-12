// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  LoadingApp loadingApp() {
    return const LoadingApp();
  }

  Authenticated authenticated(User user) {
    return Authenticated(
      user,
    );
  }

  Unauthenticated unauthenticated() {
    return const Unauthenticated();
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadingApp(),
    @required Result authenticated(User user),
    @required Result unauthenticated(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadingApp(),
    Result authenticated(User user),
    Result unauthenticated(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadingApp(LoadingApp value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadingApp(LoadingApp value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  });
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

abstract class $LoadingAppCopyWith<$Res> {
  factory $LoadingAppCopyWith(
          LoadingApp value, $Res Function(LoadingApp) then) =
      _$LoadingAppCopyWithImpl<$Res>;
}

class _$LoadingAppCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $LoadingAppCopyWith<$Res> {
  _$LoadingAppCopyWithImpl(LoadingApp _value, $Res Function(LoadingApp) _then)
      : super(_value, (v) => _then(v as LoadingApp));

  @override
  LoadingApp get _value => super._value as LoadingApp;
}

class _$LoadingApp implements LoadingApp {
  const _$LoadingApp();

  @override
  String toString() {
    return 'AuthState.loadingApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingApp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadingApp(),
    @required Result authenticated(User user),
    @required Result unauthenticated(),
  }) {
    assert(loadingApp != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return loadingApp();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadingApp(),
    Result authenticated(User user),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingApp != null) {
      return loadingApp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadingApp(LoadingApp value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(loadingApp != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return loadingApp(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadingApp(LoadingApp value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingApp != null) {
      return loadingApp(this);
    }
    return orElse();
  }
}

abstract class LoadingApp implements AuthState {
  const factory LoadingApp() = _$LoadingApp;
}

abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(Authenticated(
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

class _$Authenticated implements Authenticated {
  const _$Authenticated(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Authenticated &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadingApp(),
    @required Result authenticated(User user),
    @required Result unauthenticated(),
  }) {
    assert(loadingApp != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadingApp(),
    Result authenticated(User user),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadingApp(LoadingApp value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(loadingApp != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadingApp(LoadingApp value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated(User user) = _$Authenticated;

  User get user;
  $AuthenticatedCopyWith<Authenticated> get copyWith;
}

abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

class _$UnauthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(
      Unauthenticated _value, $Res Function(Unauthenticated) _then)
      : super(_value, (v) => _then(v as Unauthenticated));

  @override
  Unauthenticated get _value => super._value as Unauthenticated;
}

class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadingApp(),
    @required Result authenticated(User user),
    @required Result unauthenticated(),
  }) {
    assert(loadingApp != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadingApp(),
    Result authenticated(User user),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadingApp(LoadingApp value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(loadingApp != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadingApp(LoadingApp value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthState {
  const factory Unauthenticated() = _$Unauthenticated;
}
