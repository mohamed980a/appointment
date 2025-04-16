import 'package:appointment/core/theaming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          'assets/svgs/docdoc_logo_low_opacity.svg',
          fit: BoxFit.cover,
          width: double.infinity,
          height: 300.h,
        ),
        Container(
          margin: EdgeInsets.only(top: 30.h),
          // height: 200.h,
          foregroundDecoration: BoxDecoration(
           gradient: LinearGradient(colors: [
              Colors.white,
              Colors.white.withOpacity(0.5),
            ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    stops: const [
      0.14,
      0.4,
    ],
    ),


    ),
          child: Image.asset('assets/images/onboarding_doctor.png',fit: BoxFit.cover,),
        ),
        Positioned(
          bottom: 30.h,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor Appointment App',
            textAlign: TextAlign.center,
            style: TextStyles.font32BlueBold.copyWith(height: 1.4)
          ),
        ),
      ],
    );
  }
}
