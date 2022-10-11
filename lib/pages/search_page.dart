import 'package:flutter/material.dart';

import '../constants/app_constant.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(AppConstant.search),
    );
  }
}
