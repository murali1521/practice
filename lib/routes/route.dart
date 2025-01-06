import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hiiiiiiii/features/call_screen/view/call_screen.dart';
import 'package:hiiiiiiii/features/code_screen/view/code_screen.dart';
import 'package:hiiiiiiii/features/comment_screen/view/comment_screen.dart';
import 'package:hiiiiiiii/features/forgot_password_screen/view/forgot_password.dart';
import 'package:hiiiiiiii/features/home_screen/view/home_screen.dart';
import 'package:hiiiiiiii/features/introduce_screen/view/introduce_screen.dart';
import 'package:hiiiiiiii/features/introduce_screen/view/introduce_screen1.dart';
import 'package:hiiiiiiii/features/login_screen/view/login_screen.dart';
import 'package:hiiiiiiii/features/message_screen/view/message_screen.dart';
import 'package:hiiiiiiii/features/message_screen2/view/message_screen2.dart';
import 'package:hiiiiiiii/features/notification_screen/view/notification_screen.dart';
import 'package:hiiiiiiii/features/profile_screen/view/profile_screen.dart';
import 'package:hiiiiiiii/features/sign_up_screen/view/sign_up_screen.dart';
import 'package:hiiiiiiii/features/verify_phone_screen/view/verify_phone_screen.dart';
import 'package:hiiiiiiii/routes/routes_constants.dart';

class AppRouter
{
  static final  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: RoutesConstants.introduce,
    routes: <RouteBase>[
      GoRoute(
        path: RoutesConstants.introduce,
        builder: (BuildContext context, GoRouterState state) {
          return IntroduceScreen1();
        }
      ),
      GoRoute(
        path: RoutesConstants.signIn,
        builder: (BuildContext context, GoRouterState state) {
          // TODO: Implement sign in screen
          return SignInScreen();
        }
      ),
      GoRoute(
        path: RoutesConstants.signUp,
        builder: (BuildContext context, GoRouterState state) {
          // TODO: Implement sign up screen
          return SignupScreen();
        }

      ),
      GoRoute(
        path: RoutesConstants.forgotPassword,
        builder: (BuildContext context, GoRouterState state) {
          return ForgotPassword();
        }
      ),
      GoRoute(
        path: RoutesConstants.phone,
        builder: (BuildContext context, GoRouterState state) {
          // TODO: Implement profile screen
          return VerifyPhoneScreen();
        }
      ),
      GoRoute(
        path: RoutesConstants.code,
        builder: (BuildContext context, GoRouterState state) {
          // TODO: Implement profile screen
          return CodeScreen();
        }
      ),
      GoRoute(
        path: RoutesConstants.home,
        builder: (BuildContext context, GoRouterState state) {
          // TODO: Implement home screen
          return HomeScreen();
        }
      ),
      GoRoute(
        path: RoutesConstants.comment,
        builder: (BuildContext context, GoRouterState state) {
          // TODO: Implement profile screen
          return CommentScreen();
        }
      ),
      GoRoute(
        path: RoutesConstants.message,
        builder: (BuildContext context, GoRouterState state) {
          // TODO: Implement profile screen
          return MessageScreen();
        }
      ),
      GoRoute(
        path: RoutesConstants.message2,
        builder: (BuildContext context, GoRouterState state) {
          // TODO: Implement profile screen
          return MessageScreen2();
        }
      ),
      GoRoute(
        path: RoutesConstants.call,
        builder: (BuildContext context, GoRouterState state) {
          // TODO: Implement profile screen
          return CallScreen();
        }
      ),
      GoRoute(
        path: RoutesConstants.profile,
        builder: (BuildContext context, GoRouterState state) {
          return ProfileScreen();
        }
      ),
      GoRoute(
        path: RoutesConstants.notification,
        builder: (BuildContext context, GoRouterState state) {
          return NotificationScreen();
        }
      )
      // GoRoute(
      //   path: RoutesConstants.loginScreen,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const LoginScreen();
      //   }
      // ),
      // GoRoute(
      //   path: RoutesConstants.signUp,
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const SignUpScreen();
      //   }
      // ),
    ],
  );
}