import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/sign_in/sign_in.dart';
import '../pages/welcome/welcome.dart';
import '../pages/chat/chat_screen.dart';

part 'app_router.gr.dart';





@AutoRouterConfig(replaceInRouteName: "Screen,Route")
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SignInRoute.page, path: '/'),
    AutoRoute(page: WelcomeRoute.page,path: '/sin'),
    AutoRoute(page: ChatRoute.page,path: '/chat')
  ];
}
