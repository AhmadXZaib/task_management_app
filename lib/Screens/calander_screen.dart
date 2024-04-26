import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalanderScreen extends StatefulWidget {
  const CalanderScreen({super.key});

  @override
  State<CalanderScreen> createState() => _CalanderScreenState();
}

class _CalanderScreenState extends State<CalanderScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Chats Screen',
        style: TextStyle(fontSize: 40.h),
      ),
    );
  }
}
