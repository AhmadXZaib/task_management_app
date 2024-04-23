import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'package:task_management_app/Core/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 28.h,
                ),
                const Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.main,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Fazil Laghari',
                      style: TextStyle(fontSize: 28.29, color: AppColors.white),
                    ),
                    Image(
                      image: AssetImage('assets/images/boy.png'),
                      height: 48,
                      width: 47,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 58.h,
                      width: 250.w,
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: const Color(0xff455A64),
                          filled: true,
                          hintText: 'Search Tasks',
                          hintStyle: const TextStyle(
                              color: AppColors.lightBlue, fontSize: 20),
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 30,
                            color: AppColors.lightBlue,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 24, horizontal: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Container(
                      height: 54.h,
                      width: 55.w,
                      color: AppColors.main,
                      child: Image.asset(
                        'assets/images/Vector.png',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 34.h,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Completed Tasks',
                        style: TextStyle(
                          fontSize: 26,
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                        )),
                    Text(
                      'See all',
                      style: TextStyle(color: AppColors.main, fontSize: 22),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 173.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          right: index < 3 ? 7.0 : 0,
                        ),
                        child: Container(
                          width: 185.w,
                          color: index == 0
                              ? AppColors.main
                              : index == 1
                                  ? AppColors.lightBlue
                                  : index == 2
                                      ? Colors.teal
                                      : Colors.yellowAccent,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Real Estate \nWebsite \nDesign',
                                  style: GoogleFonts.ibmPlexMono(
                                    textStyle: const TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Team Member',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 80,
                                      height: 30,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 9,
                                            left: 0,
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/images/Ellipse 1.png'),
                                              radius: 10,
                                            ),
                                          ),
                                          Positioned(
                                            left: 10,
                                            top: 9,
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/images/Ellipse 2.png'),
                                              radius: 10,
                                            ),
                                          ),
                                          Positioned(
                                            left: 20,
                                            top: 9,
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/images/Ellipse 3.png'),
                                              radius: 10,
                                            ),
                                          ),
                                          Positioned(
                                            left: 30,
                                            top: 9,
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/images/Ellipse 3.png'),
                                              radius: 10,
                                            ),
                                          ),
                                          Positioned(
                                            left: 40,
                                            top: 9,
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/images/Ellipse 3.png'),
                                              radius: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Cpmplete',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      '100%',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                LinearPercentIndicator(
                                  width: 167.w,
                                  lineHeight: 6.w,
                                  percent: 1,
                                  barRadius: const Radius.circular(12),
                                  progressColor: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ongoing Projects',
                        style: TextStyle(
                          fontSize: 26,
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                        )),
                    Text(
                      'See all',
                      style: TextStyle(color: AppColors.main, fontSize: 22),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: Container(
                        height: 150.h,
                        width: 384.w,
                        color: AppColors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mobile App Wireframe',
                                style: GoogleFonts.ibmPlexMono(
                                  textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              const Text(
                                'Team Member',
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: double.infinity,
                                height: 110,
                                child: Stack(
                                  children: [
                                    const Positioned(
                                      top: 9,
                                      left: 0,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'assets/images/Ellipse 1.png',
                                        ),
                                        radius: 15,
                                      ),
                                    ),
                                    const Positioned(
                                      left: 15,
                                      top: 9,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/Ellipse 2.png'),
                                        radius: 15,
                                      ),
                                    ),
                                    const Positioned(
                                      left: 30,
                                      top: 9,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/Ellipse 3.png'),
                                        radius: 15,
                                      ),
                                    ),
                                    const Positioned(
                                      left: 45,
                                      top: 9,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/Ellipse 3.png'),
                                        radius: 15,
                                      ),
                                    ),
                                    const Positioned(
                                      left: 60,
                                      top: 9,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/Ellipse 3.png'),
                                        radius: 15,
                                      ),
                                    ),
                                    const Positioned(
                                      left: 0,
                                      top: 55,
                                      child: Text(
                                        'Due on : 20 June',
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 18),
                                      ),
                                    ),
                                    Positioned(
                                      left: 190.w,
                                      bottom: 1,
                                      child: CircularPercentIndicator(
                                        radius: 45.0,
                                        lineWidth: 5.0,
                                        percent: 0.8,
                                        center: Text(
                                          '60%',
                                          style: TextStyle(
                                              color: AppColors.white,
                                              fontSize: 20),
                                        ),
                                        backgroundColor: AppColors.lightBlue,
                                        progressColor: AppColors.main,
                                      ),
                                    ),
                                  ],
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
      ),
    );
  }
}
