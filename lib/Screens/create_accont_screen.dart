import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management_app/Core/DB_Helper/dp_helper.dart';
import 'package:task_management_app/Core/utils/app_colors.dart';
import 'package:task_management_app/Screens/home_screen.dart';
import 'package:task_management_app/Screens/signin_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    bool isObscure = true;

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
                  controller: nameController,
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
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10),
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
                    fontSize: 16,
                  ),
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
                  obscureText: isObscure,
                  decoration: InputDecoration(
                    fillColor: const Color(0xff455A64),
                    filled: true,
                    hintText: 'Enter your password',
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 20),
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.white,
                      size: 25,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      icon: Icon(
                        isObscure ? Icons.visibility : Icons.visibility_off,
                        color: Colors.white,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
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
                      style: TextStyle(
                        color: AppColors.main,
                        fontSize: 16,
                      ),
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
                  ),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        String name = nameController.text;
                        String email = emailController.text;
                        String password = passwordController.text;

                        if (name.isEmpty) {
                          _showErrorMessage(context, "Enter Name");
                        } else if (email.isEmpty) {
                          _showErrorMessage(context, "Enter Email");
                        } else if (password.isEmpty) {
                          _showErrorMessage(context, "Enter Password");
                        } else {
                          DBHelper().registerUser(
                            context,
                            name: name,
                            email: email,
                            password: password,
                            contex: context,
                            confirmpassword: '',
                          );

                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        }
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 20,
                        ),
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
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Google",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
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
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInScreen()));
                      },
                      child: const Text(
                        'Log In',
                        style: TextStyle(color: AppColors.main, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showErrorMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
    ));
  }
}
