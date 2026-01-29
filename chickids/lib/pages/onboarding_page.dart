import 'package:chickids/core/utils/image_assets.dart';
import 'package:chickids/pages/home.dart';
import 'package:chickids/widget/button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/theme/app_colors.dart';

/// Onboarding Screen
/// First screen that welcomes users to CHICKIDS
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // App Name Header
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 120.w, vertical: 20.h),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'CHICKIDS',
                  style: TextStyle(
                    color: AppColors.darkTextPrimary,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
            ),

            // Hero Image Section
            Expanded(
              flex: 6,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Stack(
                  children: [
                    // Hero image
                    Positioned.fill(
                      child: Image.asset(
                        ImageAssets.onboarding,
                        fit: BoxFit.fitHeight,
                        errorBuilder: (context, error, stackTrace) {
                          // Fallback if image fails to load
                          return Center(
                            child: Icon(
                              Icons.person,
                              size: 200.sp,
                              color: AppColors.darkOnSurfaceVariant.withOpacity(
                                0.3,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    // Overlay gradient for better text readability
                    //
                  ],
                ),
              ),
            ),

            // Text Content Section
            Container(
              height: 300.h,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color.fromARGB(0, 168, 14, 14),
                    const Color.fromARGB(255, 61, 57, 57).withOpacity(0.3),
                    // const Color.fromARGB(255, 228, 197, 197).withOpacity(0.8),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'GET READY TO DRESS\nYOUR LITTLE ONES',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.darkTextPrimary,
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w800,
                      height: 1.2,
                      letterSpacing: -0.5,
                    ),
                  ),

                  SizedBox(height: 16.h),

                  // Subtitle
                  Text(
                    'Discover Trendy Outfits, Chic Accessories &\nCozy Essentials for Kids of All Ages.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.darkTextSecondary,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),
                  ),

                  SizedBox(height: 24.h),

                  // Slide to Act Button
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: SlideToActButton(
                      onSlideComplete: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
