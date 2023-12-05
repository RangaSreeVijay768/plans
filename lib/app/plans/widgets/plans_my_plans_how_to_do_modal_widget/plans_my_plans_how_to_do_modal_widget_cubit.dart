import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_my_plans_how_to_do_modal_widget_state.dart';
part 'plans_my_plans_how_to_do_modal_widget_cubit.freezed.dart';

class PlansMyPlansHowToDoModalWidgetCubit extends Cubit<PlansMyPlansHowToDoModalWidgetState> {
  PlansMyPlansHowToDoModalWidgetCubit() : super(const PlansMyPlansHowToDoModalWidgetState.initial());
}
