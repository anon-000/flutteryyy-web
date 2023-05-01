import 'package:flutter/material.dart';
import 'package:get/get.dart';

///
/// Created by Auro on 01/05/23 at 5:18 PM
///

mixin AppFormValidators {
  static String? validateEmpty(dynamic data) {
    if (data == null) return "*required";
    if (data is String) {
      if (data.toString().trim().isEmpty) return "*required";
    }
    if (data is Iterable || data is Map) {
      if (data.isEmpty) return "*required";
    }
  }

  static String? validateAmount(String? data) {
    if (data == null) return "*required";
    if (data.isNotEmpty) {
      double amount = double.parse(data);
      if (amount <= 0)
        return "Invalid amount";
      else
        return null;
    } else {
      return "*required";
    }
  }

  static String? validateMail(String? email) {
    if (email == null) return "*required";
    if (email.isEmpty) {
      return "*required";
    } else if (!GetUtils.isEmail(email)) {
      return "Invalid email id.";
    }
  }

  static String? validatePhone(String? phone) {
    if (phone == null) return "*required";
    if (phone.isEmpty) {
      return "*required";
    } else if (!GetUtils.isPhoneNumber(phone)) {
      return "Invalid phone no.";
    }
  }
}
