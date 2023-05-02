import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar() => AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      title: Center(
        child: Text(
          "Sign In",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 16.sp),
          textAlign: TextAlign.center,
        ),
      ),
  
    );

Widget buildThirdPartySignIn(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 40.h, bottom: 20.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {},
          child: SizedBox(
            width: 40.w,
            height: 40.h,
            child: Image.asset("assets/icons/google.png"),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: SizedBox(
            width: 40.w,
            height: 40.h,
            child: Image.asset("assets/icons/apple.png"),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: SizedBox(
            width: 40.w,
            height: 40.h,
            child: Image.asset("assets/icons/facebook.png"),
          ),
        )
      ],
    ),
  );
}

Widget SignInTextField({required Widget leadingIcon, required String hint,
    required Function(String) onValueChange, bool isPassword = false}) {
  return Container(
    // decoration: BoxDecoration(
    //   borderRadius: BorderRadius.all(Radius.circular(15.w)),
    //   border: Border.all(color: Colors.grey)
    // ),
    child: TextField(
      decoration: InputDecoration(
        prefixIconConstraints: BoxConstraints(minHeight: 24, minWidth: 40),
        prefixIcon: leadingIcon,
        labelStyle: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.normal),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        labelText: hint,

      ),
      style: TextStyle(
          color: Colors.grey, fontSize: 14.sp, fontWeight: FontWeight.normal),
      onChanged: onValueChange,
      obscureText: isPassword,
    ),
  );
}
