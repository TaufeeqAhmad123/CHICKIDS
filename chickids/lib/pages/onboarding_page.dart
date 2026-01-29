import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/core/utils/image_assets.dart';
import '../core/theme/app_colors.dart';

/// Onboarding Screen
/// First screen that welcomes users to CHICKIDS
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App Name Header
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'CHICKIDS',
                  style: TextStyle(
                    color: AppColors.darkTextPrimary,
                    fontSize: 16.sp,
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
                  color: AppColors.darkSurface,
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Stack(
                  children: [
                    // Hero image
                    Positioned.fill(
                      child: Image.asset(
                        ImageAssets.onboarding,
                        fit: BoxFit.cover,
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
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              AppColors.darkBackground.withOpacity(0.3),
                              AppColors.darkBackground.withOpacity(0.8),
                            ],
                            stops: const [0.0, 0.5, 1.0],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Text Content Section
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.h),

                    // Main Heading
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

                    const Spacer(),

                    // Get Started Button
                    SizedBox(
                      width: double.infinity,
                      height: 56.h,
                      child: ElevatedButton(
                        onPressed: () {
                          // TODO: Navigate to home page
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Navigating to Home...'),
                              duration: Duration(seconds: 1),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.buttonPrimary,
                          foregroundColor: AppColors.darkTextPrimary,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28.r),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'GET STARTED',
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5,
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Icon(Icons.arrow_forward, size: 20.sp),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 40.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
