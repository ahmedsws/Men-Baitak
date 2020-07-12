// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  SignUpError signUpError(String error) {
    return SignUpError(
      error,
    );
  }
}

// ignore: unused_element
const $SignUpState = _$SignUpStateTearOff();

mixin _$SignUpState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result signUpError(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result signUpError(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result signUpError(SignUpError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result signUpError(SignUpError value),
    @required Result orElse(),
  });
}

abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
}

class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SignUpState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result signUpError(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(signUpError != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result signUpError(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result signUpError(SignUpError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(signUpError != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result signUpError(SignUpError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SignUpState {
  const factory Initial() = _$Initial;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

class _$Loading with DiagnosticableTreeMixin implements Loading {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SignUpState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result signUpError(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(signUpError != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result signUpError(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result signUpError(SignUpError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(signUpError != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result signUpError(SignUpError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SignUpState {
  const factory Loading() = _$Loading;
}

abstract class $SignUpErrorCopyWith<$Res> {
  factory $SignUpErrorCopyWith(
          SignUpError value, $Res Function(SignUpError) then) =
      _$SignUpErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$SignUpErrorCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpErrorCopyWith<$Res> {
  _$SignUpErrorCopyWithImpl(
      SignUpError _value, $Res Function(SignUpError) _then)
      : super(_value, (v) => _then(v as SignUpError));

  @override
  SignUpError get _value => super._value as SignUpError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SignUpError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$SignUpError with DiagnosticableTreeMixin implements SignUpError {
  const _$SignUpError(this.error) : assert(error != null);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState.signUpError(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpState.signUpError'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SignUpErrorCopyWith<SignUpError> get copyWith =>
      _$SignUpErrorCopyWithImpl<SignUpError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result signUpError(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(signUpError != null);
    return signUpError(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result signUpError(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signUpError != null) {
      return signUpError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result signUpError(SignUpError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(signUpError != null);
    return signUpError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result signUpError(SignUpError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signUpError != null) {
      return signUpError(this);
    }
    return orElse();
  }
}

abstract class SignUpError implements SignUpState {
  const factory SignUpError(String error) = _$SignUpError;

  String get error;
  $SignUpErrorCopyWith<SignUpError> get copyWith;
}
