import 'package:login_signup/features/data/model/all_users_model.dart';

abstract class UsersState {}
class UsersLoadingState extends UsersState {}
class UsersLoadedState extends UsersState {
  final List<User> users;

  UsersLoadedState(this.users);
}
class UsersErrorState extends UsersState {
  final String error;

  UsersErrorState(this.error);
}