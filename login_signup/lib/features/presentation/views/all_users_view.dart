import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:login_signup/core/constant/app_colors.dart';
import 'package:login_signup/core/resource/app_routes.dart';
import 'package:login_signup/features/presentation/controller/users_cubit.dart';
import 'package:login_signup/features/presentation/controller/users_state.dart';
import 'package:login_signup/features/presentation/widget/all_users_view_header.dart';
import 'package:login_signup/features/presentation/widget/user_card_widget.dart';

class AllUsersView extends StatelessWidget {
  const AllUsersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyText,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
        child: BlocProvider(
          create: (BuildContext context) {
            return UsersCubit()..getUsers();
          },
          child: AllUsersViewBody(),
        ),
      ),
    );
  }
}

class AllUsersViewBody extends StatefulWidget {
  const AllUsersViewBody({super.key});

  @override
  State<AllUsersViewBody> createState() => _AllUsersViewBodyState();
}

class _AllUsersViewBodyState extends State<AllUsersViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        // Header
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: AllUsersViewHeader(),
        ),
        // User list
        BlocBuilder<UsersCubit, UsersState>(
          builder: (BuildContext context, UsersState state) {
            if (state is UsersLoadingState) {
              return Center(
                child: CircularProgressIndicator(color: AppColors.accentColor),
              );
           
            }
            if (state is UsersErrorState) {
              return Center(
                child: Text(state.error, style: TextStyle(color: Colors.red)),
              );
            }
            if (state is UsersLoadedState) {
              return Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: state.users.length,
                  itemBuilder: (context, index) {
                    return UserCard(
                      user: state.users[index],
                      onTap: () => {
                        context.pushNamed(
                          AppRoutes.userDetail,
                          extra: state.users[index],
                        ),
                      },
                    );
                  },
                ),
              );
            }

            return Center(
              child: Text(
                'No users found',
                style: TextStyle(color: Colors.grey),
              ),
            );
          },
        ),
      ],
    );
  }
}
