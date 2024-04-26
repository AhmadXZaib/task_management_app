import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:task_management_app/Core/utils/app_colors.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  void _onItemTapped(int index) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'Task Details',
          style: TextStyle(
            fontSize: 20.h,
            color: AppColors.white,
          ),
        ),
        leading: const Icon(
          Icons.arrow_back_sharp,
          color: AppColors.white,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 30.w),
            child: Image.asset(
              'assets/images/edit.png',
              height: 24.h,
              width: 24.w,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Real Estate App Design',
                style: GoogleFonts.ibmPlexMono(
                  textStyle: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    // color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 47.h,
                    width: 47.w,
                    decoration: const BoxDecoration(
                      color: AppColors.main,
                    ),
                    child: Icon(
                      Icons.calendar_month_rounded,
                      size: 25.h,
                    ),
                  ),
                  SizedBox(
                    width: 14.w,
                  ),
                  const Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Due Date'),
                      Text(
                        '20 June',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 45.w,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 47.h,
                        width: 47.w,
                        decoration: const BoxDecoration(
                          color: AppColors.main,
                        ),
                        child: Icon(
                          Icons.person_2_outlined,
                          size: 30.h,
                        ),
                      ),
                      SizedBox(
                        width: 14.w,
                      ),
                      const Column(
                        children: [
                          Text('Project Team'),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 12,
                                backgroundImage: AssetImage(
                                  'assets/images/Ellipse 1.png',
                                ),
                              ),
                              CircleAvatar(
                                radius: 12,
                                backgroundImage: AssetImage(
                                  'assets/images/Ellipse 2.png',
                                ),
                              ),
                              CircleAvatar(
                                radius: 12,
                                backgroundImage: AssetImage(
                                  'assets/images/Ellipse 3.png',
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              const Text(
                'Project Details',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const Text(
                'Lorem Ipsum is simply dummy text of the printing and /n typesetting industry. Lorem Ipsum has been the industry/n standard dummy text ever since the 1500s, when an unknown/n printer took a galley of type and scrambled',
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Project Progress',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  CircularPercentIndicator(
                    radius: 45.0,
                    lineWidth: 5.0,
                    percent: 0.6,
                    center: const Text(
                      '60%',
                      style: TextStyle(color: AppColors.white, fontSize: 20),
                    ),
                    backgroundColor: AppColors.lightBlue,
                    progressColor: AppColors.main,
                  ),
                ],
              ),
              const Text(
                'All Tasks',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Container(
                      height: 58.h,
                      width: 384.w,
                      color: AppColors.blue,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Center(
                              child: Text(
                                'User Interviews',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                            ),
                            Container(
                              height: 40.h,
                              width: 40.w,
                              decoration:
                                  const BoxDecoration(color: AppColors.main),
                              child: const Icon(
                                Icons.check_circle_outline,
                                size: 29,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 47.w, right: 47.w, bottom: 15.h),
        child: Container(
          height: 47.h,
          width: 100.w, // Adjust height as needed
          color: AppColors.main,
          child: const Center(
            child: Text(
              'Add Task',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ), // Background color of the container
        ),
      ),
    );
  }
}
