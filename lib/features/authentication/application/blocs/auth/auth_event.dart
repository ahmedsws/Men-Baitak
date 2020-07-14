import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:men_baitak/features/authentication/infrastructure/user.dart';

part 'auth_event.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.startApp() = StartApp;
  const factory AuthEvent.authenticate(User user) = Authenticate;
  const factory AuthEvent.unauthenticate() = Unauthenticate;
}
