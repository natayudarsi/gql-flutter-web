import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reverse_test/common/config/screen_config.dart';
import 'package:reverse_test/common/themes/color_pallete.dart';
import 'package:reverse_test/common/themes/px_text.dart';
import 'package:reverse_test/presentation/screens/register/bloc/register_bloc.dart';
import 'package:reverse_test/presentation/screens/register/register_keys.dart';

import 'package:reverse_test/presentation/screens/register/register_strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>
    with TickerProviderStateMixin {
  RegisterBloc registerBloc;

  @override
  void initState() {
    super.initState();
    registerBloc = BlocProvider.of<RegisterBloc>(context);

    if (mounted) {
      registerBloc.add(
      GetEmployee(email: 'kyannasoe@gmail.com'),
    );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text("widget title")),
      body: BlocBuilder<RegisterBloc, RegisterState>(
        builder: (context, state) {
          print(state);
          if (state is RegisterInitial) {}

          // if (state is EmployeeLoading) {
          //   return Center(
          //     key: RegisterKeys.loading,
          //       child: Image.asset(
          //     RegisterStrings.loading,
          //     height: 6 * ScreenConfig.heightMultiplier,
          //     width: 13.3 * ScreenConfig.widthMultiplier,
          //   ));
          // }

          // if (state is EmployeeError) {
          //   return Center(
          //     key: RegisterKeys.error,
          //     child: Text(
          //       RegisterStrings.stringError,
          //       style: PxText.body14,
          //     ),
          //   );
          // }

          if (state is EmployeeLoaded) {
            return Container(
                height: 500,
                width: 500,
                child:  
                Text(state.employee.firstName),
              );
          }

          return Container(
            child: Text("eror cuy"),
          
          );

        },
      ),
    );
  }
}
