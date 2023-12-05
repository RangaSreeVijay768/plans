import 'package:beebloom_water_tracker/app/app.dart';
import 'package:beebloom_water_tracker/app/bloc_observer.dart';
import 'package:beebloom_water_tracker/app/core/di/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = const AppBlocObserver();
  configureDependencies();
  runApp(const App());
}
