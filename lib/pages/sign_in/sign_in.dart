import 'package:auto_route/auto_route.dart';
import 'package:bloc_proj/pages/sign_in/bloc/sign_in_bloc.dart';
import 'package:bloc_proj/pages/sign_in/bloc/sign_in_event.dart';
import 'package:bloc_proj/pages/sign_in/widgets/sign_in_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scope_function/scope_function.dart';

import 'bloc/sign_in_state.dart';

@RoutePage()
class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    AppBar appBar = buildAppBar();
    StackRouter appRouter = AutoRouter.of(context);
    return BlocProvider<SignInBloc>(
      create: (BuildContext context) => SignInBloc(),
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: appBar,
            body: ScrollConfiguration(
              behavior: const ScrollBehavior().copyWith(overscroll: false),
              child: SingleChildScrollView(
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: MediaQuery.of(context).size.width,
                      minHeight: MediaQuery.of(context).size.height -
                          appBar.preferredSize.height -
                          MediaQuery.of(context).padding.top,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        thirdPartyLogin(context),
                        Column(
                          children: [
                            signInField1(context),
                            SizedBox(
                              height: 24.h,
                            ),
                            signInField2(context),
                            forgotPasswordButton()
                          ],
                        ),
                        Column(
                          children: [
                            //wtf repaints
                            BlocBuilder<SignInBloc, SignInState>(
                                buildWhen: (previousState, state) {
                              return false;
                            }, builder: (context, state) {
                              return loginButton(() {
                                BlocProvider.of<SignInBloc>(context)
                                    .add(SignInEvent.onSignInClick(appRouter));
                              });
                            }),
                            SizedBox(
                              height: 15.h,
                            ),
                            BlocBuilder<SignInBloc, SignInState>(
                                buildWhen: (previousState, state) {
                                  return false;
                                }, builder: (context, state) {
                              return registerButton(() {
                                BlocProvider.of<SignInBloc>(context)
                                    .add(const SignInEvent.onRegisterClick());
                              });
                            }),
                            SizedBox(
                              height: 20.h,
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }

  Widget signInField1(BuildContext context) =>
      BlocBuilder<SignInBloc, SignInState>(buildWhen: (previousState, state) {
        return false;
      }, builder: (context, state) {
        return SignInTextField(
            leadingIcon: ImageIcon(
              Image.asset(
                "assets/icons/user.png",
              ).image,
              size: 12,
            ),
            hint: "Email",
            onValueChange: (String string) {
              // print(string);
              BlocProvider.of<SignInBloc>(context)
                  .add(SignInEvent.onEmailChanged(string));
            });
      });

  Widget signInField2(BuildContext context) =>
      BlocBuilder<SignInBloc, SignInState>(buildWhen: (previousState, state) {
        return false;
      }, builder: (context, state) {
        return SignInTextField(
            leadingIcon: ImageIcon(
              Image.asset(
                "assets/icons/lock.png",
              ).image,
              size: 12,
            ),
            hint: "Password",
            onValueChange: (String string) => {
                  BlocProvider.of<SignInBloc>(context)
                      .add(SignInEvent.onPasswordChanged(string))
                },
            isPassword: true);
      });

  Widget thirdPartyLogin(BuildContext context) => Column(
        children: [
          buildThirdPartySignIn(context),
          Center(
            child: Container(
                margin: EdgeInsets.only(bottom: 5.h),
                child: Text(
                  "Or use your email account to sign in",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.normal),
                )),
          ),
        ],
      );

  Widget forgotPasswordButton() => TextButton(
      onPressed: () {},
      child: Text(
        "Forgot password",
        style: TextStyle(
            color: Colors.black87,
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.underline),
      ));

  Widget loginButton(Function() onClick) => FilledButton(
        onPressed: onClick,
        style: FilledButton.styleFrom(minimumSize: Size.fromHeight(50.w)),
        child: Text(
          "Sign In",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
      );

  Widget registerButton(Function() onClick) => FilledButton(
        onPressed: onClick,
        style: FilledButton.styleFrom(
            minimumSize: Size.fromHeight(50.w), backgroundColor: Colors.white),
        child: Text(
          "Register",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
      );
}
