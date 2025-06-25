import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBackbutton extends StatelessWidget {
  const CustomBackbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: SvgPicture.asset('assets/Frame.svg', height: 24, width: 24),
    );
  }
}
