import 'package:flutter/material.dart';
import 'package:dashboard_task/constants/app_constant.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(AppConstant.bookmark),
    );
  }
}
