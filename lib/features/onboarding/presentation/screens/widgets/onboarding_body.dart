import 'package:appointment/core/helpers/extensions.dart';
import 'package:appointment/core/routing/routes.dart';
import 'package:appointment/core/theaming/colors.dart';
import 'package:appointment/core/theaming/styles.dart';
import 'package:appointment/features/onboarding/presentation/screens/widgets/doc_logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'doctor_image_and_text.dart';
class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            top: 30.h,
            bottom: 30.h
        ),
        child: Column(
          children: [
            DocLogoAndName(),
            SizedBox(
              height: 30.h,
            ),
            DoctorImageAndText(),
            Padding(
              padding:  EdgeInsets.symmetric(
                  horizontal: 30.w
              ),
              child: Column(
                children: [
                  Text(
                    'Book your appointment with the best doctors in your area',
                    style: TextStyles.font14Black.copyWith(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.normal,
                        height: 1.2,
                        color: Colors.grey
                    )
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  MaterialButton(onPressed: (){
                    context.pushNamed(Routes.loginScreen);
                  },
                  color: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    minWidth: double.infinity,
                    height: 50.h,
                    child: Text(
                      'Get Started',
                      style: TextStyles.font16White.copyWith(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
