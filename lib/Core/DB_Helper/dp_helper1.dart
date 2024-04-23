import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_management_app/Screens/home_screen.dart';
import 'package:task_management_app/Screens/signin_screen.dart';

class DBHelper {
  static const String emailKey = 'Email';
  static const String pswdKey = 'Password';
  static const String isUserLoggedIn = 'isUserLoggedIn';

  Future<void> registerUser(
    BuildContext context, {
    required String name,
    required String email,
    required String password,
  }) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    try {
      await preferences.setString(emailKey, email);
      await preferences.setString(pswdKey, password);
      await preferences.setBool(isUserLoggedIn, true);
      log('User Registered in Database:\nName: $name\nEmail: $email\nPassword: $password');
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

  Future<void> logOut(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(isUserLoggedIn);
    Navigator.pushReplacement(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(
        builder: (context) => const SignInScreen(),
      ),
    );
  }

  Future<void> logIn(
    BuildContext context, {
    required String email,
    required String password,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final emailS = prefs.getString(emailKey) ?? '';
    final pswdS = prefs.getString(pswdKey) ?? '';

    if (emailS == email && pswdS == password) {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
      prefs.setBool(isUserLoggedIn, true);
    } else {
      log('Wrong Email or Password');
    }
  }
}
