import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_management_app/Screens/home_screen.dart';
import 'package:task_management_app/Screens/signin_screen.dart';

class DBHelper {
  static const String nameKey = 'Name';
  static const String emailKey = 'Email';
  static const String pswdKey = 'Password';

  static const String isUserLoggedIn = 'isUserLoggedIn';

  String? name;
  String? email;
  String? password;
  String? confirm;

  Future<void> registerUser(
    BuildContext context, {
    required String name,
    required String email,
    required String password,
    required String confirmpassword,
    required BuildContext contex,
  }) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    try {
      await preferences.setString(nameKey, name);
      await preferences.setString(emailKey, email);
      await preferences.setString(pswdKey, password);
      await preferences.setString(pswdKey, password);

      await preferences.setBool(isUserLoggedIn, true);
      log('User Registaer in Database:\nName: $name\nEmail: $email\nPassword: $password');
      // ignore: use_build_context_synchronously
      await logIn(context, email: email, password: password);
    } catch (e) {
      log('$e');
    }
  }

  Future<bool> checkUserLoggedIn() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    bool? checkLogged = preferences.getBool(isUserLoggedIn) ?? false;
    return checkLogged;
  }

  getData() async {
    final prefs = await SharedPreferences.getInstance();
    name = prefs.getString(DBHelper.nameKey);
    email = prefs.getString(DBHelper.emailKey);
    password = prefs.getString(DBHelper.pswdKey);
  }

  logOut(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(isUserLoggedIn);
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const SignInScreen(),
      ),
    );
  }

  logIn(
    BuildContext context, {
    required String email,
    required String password,
  }) async {
    final prefs = await SharedPreferences.getInstance();

    final emailS = prefs.getString(emailKey) ?? '';
    final pswdS = prefs.getString(pswdKey) ?? '';

    if (emailS == email && pswdS == password) {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
      prefs.setBool(isUserLoggedIn, true);
    } else if (emailS.isEmpty || pswdS.isEmpty) {
      log('Account Nashta');
    } else {
      log('Wrong Email or Password');

      // final emailll = prefs.getString(emailKey);
      // final padddd = prefs.getString(pswdKey);
      // log(emailll.toString() + padddd.toString());
    }
  }

  validateLoginCredentials({required String email, required String password}) {}
}
