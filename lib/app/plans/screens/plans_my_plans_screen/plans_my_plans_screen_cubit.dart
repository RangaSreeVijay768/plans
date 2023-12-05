import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_my_plans_screen_state.dart';
part 'plans_my_plans_screen_cubit.freezed.dart';

class PlansMyPlansScreenCubit extends Cubit<PlansMyPlansScreenState> {
  PlansMyPlansScreenCubit() : super(const PlansMyPlansScreenState.initial());
}
