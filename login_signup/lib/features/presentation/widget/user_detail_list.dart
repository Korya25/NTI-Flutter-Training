import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_signup/core/constant/app_string.dart';
import 'package:login_signup/features/data/model/all_users_model.dart';
import 'package:login_signup/features/presentation/widget/detail_card.dart';

class UserDetailList extends StatelessWidget {
  final User user;

  const UserDetailList({super.key, required this.user});

  void _copyToClipboard(BuildContext context, String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Copied to clipboard: $text'),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DetailCard(
          icon: Icons.email_outlined,
          title: AppString.email,
          subtitle: user.email,
          onTap: () => _copyToClipboard(context, user.email),
        ),
        const SizedBox(height: 12),
        DetailCard(
          icon: Icons.phone_outlined,
          title: AppString.phone,
          subtitle: user.phone,
          onTap: () => _copyToClipboard(context, user.phone),
        ),
        const SizedBox(height: 12),
        DetailCard(
          icon: Icons.location_city_outlined,
          title: AppString.address,
          subtitle: '${user.address.state}, ${user.address.city}',
          trailing: Text(
            user.address.country,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 12),
        DetailCard(
          icon: Icons.location_on_outlined,
          title: AppString.coordinates,
          subtitle:
              '${user.address.coordinates.lat.toStringAsFixed(4)}, ${user.address.coordinates.lng.toStringAsFixed(4)}',
          onTap: () => _copyToClipboard(
            context,
            '${user.address.coordinates.lat}, ${user.address.coordinates.lng}',
          ),
          
        ),
      ],
    );
  }
}
