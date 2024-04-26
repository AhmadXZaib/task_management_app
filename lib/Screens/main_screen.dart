import 'package:flutter/material.dart';
import 'package:task_management_app/Core/utils/app_colors.dart';
import 'package:task_management_app/Screens/add_task.dart';
import 'package:task_management_app/Screens/chat_screen.dart';
import 'package:task_management_app/Screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> pages = [
    const HomeScreen(),
    const ChatScreeen(),
    const AddTask(),
  ];
  int selectIndex = 0;

  setIndex(int index) {
    setState(() {
      // index = selectIndex;
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 90,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              // topLeft: Radius.circular(23),
              // topRight: Radius.circular(23),
              ),
          color: AppColors.background,
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey,
          //     offset: Offset(0, -2),
          //     blurRadius: 10,
          //     spreadRadius: 1,
          //   ),
          // ],
        ),
        child: BottomNavigationBar(
          selectedItemColor: AppColors.main,
          unselectedItemColor: AppColors.lightBlue,

          onTap: setIndex,
          backgroundColor: Colors.transparent,
          // selectedItemColor: Colors.teal,
          elevation: 0,
          currentIndex: selectIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
              ),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
        ),
      ),
      body: pages[selectIndex],
    );
  }
}





// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:task_management_app/Core/utils/app_colors.dart';
// import 'package:task_management_app/Screens/add_task.dart';
// import 'package:task_management_app/Screens/calander_screen.dart';
// import 'package:task_management_app/Screens/chat_screen.dart';
// import 'package:task_management_app/Screens/home_screen.dart';
// import 'package:task_management_app/Screens/notification_screen.dart';

// class MainScreen extends StatefulWidget {
//   const MainScreen({Key? key}) : super(key: key);

//   @override
//   // ignore: library_private_types_in_public_api
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int _selectedIndex = 0;

//   static const List<Widget> _widgetOptions = <Widget>[
//     HomeScreen(),
//     ChatScreeen(),
//     AddTask(),
//     CalanderScreen(),
//     NotificationScreen()
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: AppColors.background,
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.red,
//         items: <BottomNavigationBarItem>[
//           const BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           const BottomNavigationBarItem(
//             icon: Icon(Icons.chat),
//             label: 'Chat',
//           ),
//           BottomNavigationBarItem(
//             icon: Container(
//               height: 54,
//               width: 54,
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(6)),
//                 color: AppColors.main,
//               ),
//               child: const Icon(
//                 Icons.add_box_outlined,
//               ),
//             ),
//             label: 'Chat',
//           ),
//           const BottomNavigationBarItem(
//             icon: Icon(Icons.calendar_today),
//             label: 'Calendar',
//           ),
//           const BottomNavigationBarItem(
//             icon: Icon(Icons.notifications),
//             label: 'Notification',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         iconSize: 30,
//         selectedItemColor: AppColors.main,
//         unselectedItemColor: AppColors.blue,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
