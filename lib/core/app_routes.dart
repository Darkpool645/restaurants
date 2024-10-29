import 'package:flutter/material.dart';
import '../features/auth/login_screen.dart';
import '../features/auth/register_screen.dart';
import '../features/auth/recovery_password_screen.dart';
import '../features/auth/confirm_code_screen.dart';
import '../features/auth/reset_password_screen.dart';
import '../features/home/home_screen.dart';
import '../features/details/details_screen.dart';
import '../features/profile/profile_screen.dart';

class AppRoutes {
  static const String login = '/login';
  static const String register = '/register';
  static const String recoveryPassword = '/recovery-password';
  static const String confirmCode = '/confirm-code';
  static const String resetPassword = '/reset-password';
  static const String home = '/home';
  static const String details = '/details';
  static const String profile = '/profile';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case register:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case recoveryPassword: 
        return MaterialPageRoute(builder: (_) => RecoveryPasswordScreen());
      case confirmCode:
        return MaterialPageRoute(builder: (_) => ConfirmCodeScreen());
      case resetPassword:
        return MaterialPageRoute(builder: (_) => ResetPasswordScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case details:
        final restaurant = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(builder: (_) => DetailsScreen(restaurant: restaurant));
      case profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      default:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
    }
  }
}