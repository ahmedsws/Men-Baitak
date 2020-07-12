import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:men_baitak/features/authentication/infrastructure/user.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.loadingApp() = LoadingApp;
  const factory AuthState.authenticated(User user) = Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
}
