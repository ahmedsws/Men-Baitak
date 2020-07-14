// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  LoginWithEmail loginWithEmail() {
    return const LoginWithEmail();
  }
}

// ignore: unused_element
const $LoginEvent = _$LoginEventTearOff();

mixin _$LoginEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loginWithEmail(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loginWithEmail(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loginWithEmail(LoginWithEmail value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loginWithEmail(LoginWithEmail value),
    @required Result orElse(),
  });
}

abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

abstract class $LoginWithEmailCopyWith<$Res> {
  factory $LoginWithEmailCopyWith(
          LoginWithEmail value, $Res Function(LoginWithEmail) then) =
      _$LoginWithEmailCopyWithImpl<$Res>;
}

class _$LoginWithEmailCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginWithEmailCopyWith<$Res> {
  _$LoginWithEmailCopyWithImpl(
      LoginWithEmail _value, $Res Function(LoginWithEmail) _then)
      : super(_value, (v) => _then(v as LoginWithEmail));

  @override
  LoginWithEmail get _value => super._value as LoginWithEmail;
}

class _$LoginWithEmail with DiagnosticableTreeMixin implements LoginWithEmail {
  const _$LoginWithEmail();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.loginWithEmail()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LoginEvent.loginWithEmail'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginWithEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loginWithEmail(),
  }) {
    assert(loginWithEmail != null);
    return loginWithEmail();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loginWithEmail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginWithEmail != null) {
      return loginWithEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loginWithEmail(LoginWithEmail value),
  }) {
    assert(loginWithEmail != null);
    return loginWithEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loginWithEmail(LoginWithEmail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginWithEmail != null) {
      return loginWithEmail(this);
    }
    return orElse();
  }
}

abstract class LoginWithEmail implements LoginEvent {
  const factory LoginWithEmail() = _$LoginWithEmail;
}
