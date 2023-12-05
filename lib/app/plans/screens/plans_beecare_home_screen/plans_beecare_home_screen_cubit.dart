import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_beecare_home_screen_state.dart';
part 'plans_beecare_home_screen_cubit.freezed.dart';

class PlansBeecareHomeScreenCubit extends Cubit<PlansBeecareHomeScreenState> {
  PlansBeecareHomeScreenCubit() : super(const PlansBeecareHomeScreenState.initial());
}
