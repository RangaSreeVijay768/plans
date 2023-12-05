import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_routine_coin_earning_screen_state.dart';
part 'plans_routine_coin_earning_screen_cubit.freezed.dart';

class PlansRoutineCoinEarningScreenCubit extends Cubit<PlansRoutineCoinEarningScreenState> {
  PlansRoutineCoinEarningScreenCubit() : super(const PlansRoutineCoinEarningScreenState.initial());

}
