import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_routine_intermediate_screen_state.dart';
part 'plans_routine_intermediate_screen_cubit.freezed.dart';

class PlansRoutineIntermediateScreenCubit extends Cubit<PlansRoutineIntermediateScreenState> {
  PlansRoutineIntermediateScreenCubit() : super(const PlansRoutineIntermediateScreenState.initial());
}
