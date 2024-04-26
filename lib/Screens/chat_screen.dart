import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreeen extends StatefulWidget {
  const ChatScreeen({super.key});

  @override
  State<ChatScreeen> createState() => _ChatScreeenState();
}

class _ChatScreeenState extends State<ChatScreeen> {
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
