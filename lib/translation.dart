import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class translation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                if (context.locale.toString() == "en") {
                  context.setLocale(Locale("ar")); //بتغير اللغة تعتي
                } else {
                  context.setLocale(Locale("ar/"));
                }
              },
              icon: Icon(Icons.language))
        ],
        title: Text(
            "app_name".tr()), //بنبه ان هادي مش كلمة عادية لا دورلي ع ترجمتها
      ),
      body: SizedBox(
        height: 100.h,
        width: 150.w,
        child: Center(
          child: Text(
            "welcome".tr(),
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
