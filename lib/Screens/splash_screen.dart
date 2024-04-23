import 'package:flutter/material.dart';
import 'package:task_management_app/Core/utils/app_colors.dart';
import 'package:task_management_app/Screens/create_accont_screen.dart';
import 'package:task_management_app/Screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _image1Controller;
  late Animation<double> _image1OpacityAnimation;

  late AnimationController _image2Controller;
  late Animation<double> _image2OpacityAnimation;

  late AnimationController _textController;
  late Animation<double> _textOpacityAnimation;

  late AnimationController _containerController;
  late Animation<double> _containerScaleAnimation;

  // Simulated authentication status
  bool isAuthenticated = false;

  @override
  void initState() {
    super.initState();

    _image1Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _image1OpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _image1Controller,
        curve: Curves.easeInOut,
      ),
    );

    _image2Controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _image2OpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _image2Controller,
        curve: Curves.easeInOut,
      ),
    );

    _textController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );
    _textOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _textController,
        curve: Curves.easeInOut,
      ),
    );

    _containerController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    _containerScaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(
        parent: _containerController,
        curve: Curves.easeInOut,
      ),
    );

    // Start all animations
    _image1Controller.forward();
    _image2Controller.forward();
    _textController.forward();
    _containerController.forward();

    // Simulate checking authentication status
    _checkAuthentication();
  }

  void _checkAuthentication() {
    // Simulate checking user authentication status
    // Set isAuthenticated to true if user is authenticated
    // Replace this logic with your actual authentication logic
    // For demo purposes, we'll assume the user is not authenticated initially
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isAuthenticated = true;
      });
      _navigateToScreen();
    });
  }

  void _navigateToScreen() {
    // Navigate to home screen if user is authenticated, otherwise navigate to create account screen
    if (isAuthenticated) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const CreateAccountScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 15, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeTransition(
                  opacity: _image1OpacityAnimation,
                  child: Image.asset(
                    'assets/images/group.png',
                    height: 62,
                    width: 93,
                  ),
                ),
                const SizedBox(height: 20),
                FadeTransition(
                  opacity: _image2OpacityAnimation,
                  child: Image.asset(
                    'assets/images/splash.png',
                    height: 330,
                    width: 369,
                  ),
                ),
                const SizedBox(height: 40),
                FadeTransition(
                  opacity: _textOpacityAnimation,
                  child: Image.asset(
                    'assets/images/manage.png',
                    height: 230,
                    width: 376,
                  ),
                ),
                const SizedBox(height: 30),
                ScaleTransition(
                  scale: _containerScaleAnimation,
                  child: Center(
                    child: Container(
                      height: 60,
                      width: 276,
                      decoration: BoxDecoration(
                        color: AppColors.main,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            _navigateToScreen();
                          },
                          child: const Text(
                            "Let's Start",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _image1Controller.dispose();
    _image2Controller.dispose();
    _textController.dispose();
    _containerController.dispose();
    super.dispose();
  }
}
