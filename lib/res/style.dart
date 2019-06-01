import 'package:flutter/material.dart';

import 'app_colors.dart';

class FullscreenDialogAppBarTheme extends AppBarTheme {
  FullscreenDialogAppBarTheme()
      : super(
            iconTheme: IconThemeData(
              color: AppColors.dialogAppBarCloseColor,
            ),
            color: AppColors.dialogAppBarColor,
            textTheme: TextTheme(
                title: TextStyle(
                    color: AppColors.dialogAppBarCloseColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700)));
}
