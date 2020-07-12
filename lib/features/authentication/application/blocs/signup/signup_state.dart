import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = Initial;
  const factory SignUpState.loading() = Loading;
  const factory SignUpState.signUpError(String error) = SignUpError;
}
