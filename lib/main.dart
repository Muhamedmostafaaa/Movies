import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/cnfig/themes/theme_manager.dart';
import 'package:movies_app/core/services/service_locator.dart';
import 'package:movies_app/core/utils/colors_manager.dart';
import 'package:movies_app/features/movies/presentation/controller/movies_cubit.dart';

import 'core/network/dio_helper.dart';
import 'features/movies/presentation/screens/movies_screen.dart';
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator().init();
  DioHelper.init();
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: ColorManager.primaryColor, //or set color with: Color(0xFF0000FF)
  ));

}
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return
          MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: getApplicationTheme(),
              home: MoviesScreen());
        }

  }



