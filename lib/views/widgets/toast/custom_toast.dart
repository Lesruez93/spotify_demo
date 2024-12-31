import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../style/app_color.dart';

class CustomToast {
  static errorToast(String? title, BuildContext context, String? message) {
    Get.rawSnackbar(
      duration: Duration(seconds: 10),
      dismissDirection: DismissDirection.horizontal,
      messageText: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Icon(CupertinoIcons.info_circle,
          color: Theme.of(context).colorScheme.background),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 4),
                  child: Text(
                    title ?? "error",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.background,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'product_sans',
                    ),
                  ),
                ),
                Text(
                  message ?? "Add your error message here",
                  style: TextStyle(color: Theme.of(context).colorScheme.background),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: AppColor.error,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      margin: EdgeInsets.symmetric(horizontal: 16),
      borderRadius: 8,
      snackPosition: SnackPosition.TOP,
    );
  }

  static successToast(String? title, BuildContext context,  String? message) {
    Get.rawSnackbar(
      duration: Duration(seconds: 10 ),
      dismissDirection: DismissDirection.horizontal,
      messageText: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(CupertinoIcons.check_mark_circled,
          color: Theme.of(context).colorScheme.background),

          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 4),
                  child: Text(
                    title ?? "Success",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.background,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'product_sans',
                    ),
                  ),
                ),
                Text(
                  message ?? "Add your success message here",
                  style: TextStyle(color: Theme.of(context).colorScheme.background),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: AppColor.success,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      margin: EdgeInsets.symmetric(horizontal: 16),
      borderRadius: 8,
      snackPosition: SnackPosition.TOP,
    );
  }

  static warningToast(String? title, BuildContext context, String? message) {
    Get.rawSnackbar(
      duration: Duration(seconds: 4),
      dismissDirection: DismissDirection.horizontal,
      messageText: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Icon(CupertinoIcons.info_circle,
              color: Theme.of(context).colorScheme.background),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 4),
                  child: Text(
                    title ?? "Warning",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.background,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'product_sans',
                    ),
                  ),
                ),
                Text(
                  message ?? "Add your error message here",
                  style: TextStyle(color: Theme.of(context).colorScheme.background),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: AppColor.warning,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      margin: EdgeInsets.symmetric(horizontal: 16),
      borderRadius: 8,
      snackPosition: SnackPosition.TOP,
    );
  }

}
