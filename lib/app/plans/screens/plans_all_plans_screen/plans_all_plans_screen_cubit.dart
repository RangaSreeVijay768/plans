import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_all_plans_screen_state.dart';
part 'plans_all_plans_screen_cubit.freezed.dart';

class PlansAllPlansScreenCubit extends Cubit<PlansAllPlansScreenState> {
  PlansAllPlansScreenCubit() : super(const PlansAllPlansScreenState.initial());
}
