import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reverse_test/common/config/injector.dart';
import 'package:reverse_test/presentation/screens/register/bloc/register_bloc.dart';
import 'package:reverse_test/presentation/screens/register/register_screen.dart';

import 'routes.dart';

import 'package:reverse_test/presentation/screens/register_splash/splash_screen.dart';
import 'package:reverse_test/presentation/screens/error/error_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => _buildSplashScreen());

      case Routes.registerScreen:
        return MaterialPageRoute(builder: (context) => _buildRegisterScreen());

      default:
        return MaterialPageRoute(builder: (_) => _buildErrorScreen());
    }
  }

  static Widget _buildSplashScreen() {
    return SplashScreen();
  }

  static Widget _buildRegisterScreen() {
    return BlocProvider<RegisterBloc>(
      create: (BuildContext context) => getIt<RegisterBloc>(),
      child: RegisterScreen(),
    );
  }

  static Widget _buildErrorScreen() {
    return ErrorScreen();
  }
}
