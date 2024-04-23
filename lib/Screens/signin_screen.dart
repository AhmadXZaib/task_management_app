import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management_app/Core/DB_Helper/dp_helper.dart';
import 'package:task_management_app/Core/utils/app_colors.dart';
import 'package:task_management_app/Screens/home_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isObscure = true; // Initialize _isObscure here

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/group.png',
                    height: 81.h,
                    width: 139.w,
                  ),
                ),
                SizedBox(
                  height: 39.h,
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
                  'Email Address',
                  style: TextStyle(color: AppColors.lightBlue, fontSize: 25),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    fillColor: const Color(0xff455A64),
                    filled: true,
                    hintText: 'ahmadxdev@gmail.com',
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 20),
                    prefixIcon: const Icon(
                      Icons.person,
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
                  controller: passwordController,
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    fillColor: const Color(0xff455A64),
                    filled: true,
                    hintText: 'Enter your password',
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 20),
                    prefixIcon:
                        const Icon(Icons.lock, color: Colors.white, size: 30),
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
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: AppColors.lightBlue),
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
                  child: ElevatedButton(
                    onPressed: () async {
                      // Attempt to login using provided credentials
                      bool loggedIn = await DBHelper().logIn(
                        email: emailController.text,
                        password: passwordController.text,
                        context,
                      );

                      // If login was successful, navigate to home page
                      if (loggedIn) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      } else {
                        // Show SnackBar with error message
                        _showSnackBar('Incorrect email or password.');
                      }
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                      ),
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
                      'Don’t have an account?',
                      style:
                          TextStyle(color: AppColors.lightBlue, fontSize: 16),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        child: const Text(
                          'Sign Up',
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

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
    ));
  }
}
