import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'welcome_screen_state.dart';

class WelcomeScreenCubit extends Cubit<WelcomeScreenState> {
  WelcomeScreenCubit() : super(WelcomeScreenInitial());

  void test() => emit(WelcomeScreenTest());
}
