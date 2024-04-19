import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management_app/Core/utils/app_colors.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    bool _isObscure = true;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/group.png',
                    width: 139.w,
                    height: 91.h,
                  ),
                ),
                const Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: 35,
                    color: AppColors.white,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  'Full Name',
                  style: TextStyle(color: AppColors.lightBlue, fontSize: 25),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: const Color(0xff455A64),
                    filled: true,
                    hintText: 'Ahmad Zaib',
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 20),
                    prefixIcon: const Icon(
                      Icons.person_2_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16), // Set text color to white here
                ),
                const SizedBox(height: 10),
                const Text(
                  'Email Address',
                  style: TextStyle(color: AppColors.lightBlue, fontSize: 25),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: const Color(0xff455A64),
                    filled: true,
                    hintText: 'ahmadxdev@gmail.com',
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 20),
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16), // Set text color to white here
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  'Password',
                  style: TextStyle(color: AppColors.lightBlue, fontSize: 25),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    fillColor: const Color(0xff455A64),
                    filled: true,
                    hintText: 'Enter your password',
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 20),
                    prefixIcon:
                        const Icon(Icons.lock, color: Colors.white, size: 25),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                        color: Colors.white, // Setting the color explicitly
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.check_box_outlined,
                      color: AppColors.main,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    const Text(
                      'I have read & agreed to DayTask',
                      style: TextStyle(color: AppColors.lightBlue),
                    ),
                    const Text(
                      ' Privacy Policy,',
                      style: TextStyle(color: AppColors.main, fontSize: 16),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.w),
                  child: const Text(
                    'Terms & Condition,',
                    style: TextStyle(color: AppColors.main, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 28.h,
                ),
                Container(
                  height: 60,
                  width: 376,
                  decoration: const BoxDecoration(
                    color: AppColors.main,
                    // borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      "Let's Start",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35.h,
                ),
                Container(
                  height: 60,
                  width: 376,
                  decoration: const BoxDecoration(
                      border: Border(
                    bottom: BorderSide(color: AppColors.white),
                    left: BorderSide(color: AppColors.white),
                    right: BorderSide(color: AppColors.white),
                    top: BorderSide(color: AppColors.white),
                  )
                      // color: AppColors.main,
                      // borderRadius: BorderRadius.circular(30),
                      ),
                  child: const Center(
                    child: Text(
                      "Google",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style:
                          TextStyle(color: AppColors.lightBlue, fontSize: 16),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Log In',
                          style: TextStyle(color: AppColors.main, fontSize: 16),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
