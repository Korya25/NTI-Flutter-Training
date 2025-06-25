import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_signup/core/constant/app_string.dart';
import 'package:login_signup/features/data/repos/users_repo.dart';
import 'package:login_signup/features/presentation/controller/users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit() : super(UsersLoadingState());
  final UsersRepo _usersRepo = UsersRepo();

  Future<void> getUsers() async {
    emit(UsersLoadingState());
    try {
      final users = await _usersRepo.getUsers();
      if (users.isEmpty) {
        emit(UsersErrorState(AppString.errorFetchingUsers));
      } else {
        emit(UsersLoadedState(users));
      }
    } catch (e) {
      emit(UsersErrorState(e.toString()));
    }
  }
}
