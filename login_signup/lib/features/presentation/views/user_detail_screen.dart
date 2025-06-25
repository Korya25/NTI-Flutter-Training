import 'package:flutter/material.dart';
import 'package:login_signup/features/data/model/all_users_model.dart';
import 'package:login_signup/features/presentation/widget/user_detail_header.dart';
import 'package:login_signup/features/presentation/widget/user_detail_list.dart';

class UserDetailScreen extends StatelessWidget {
  final User user;

  const UserDetailScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          UserDetailHeader(user: user),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(children: [UserDetailList(user: user)]),
            ),
          ),
        ],
      ),
    );
  }
}
