import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_create_task_activity_record_widget_state.dart';
part 'plans_create_task_activity_record_widget_cubit.freezed.dart';

class PlansCreateTaskActivityRecordWidgetCubit extends Cubit<PlansCreateTaskActivityRecordWidgetState> {
  PlansCreateTaskActivityRecordWidgetCubit() : super(const PlansCreateTaskActivityRecordWidgetState.initial());
}
