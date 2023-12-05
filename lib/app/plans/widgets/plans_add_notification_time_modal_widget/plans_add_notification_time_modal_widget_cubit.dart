import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_add_notification_time_modal_widget_state.dart';
part 'plans_add_notification_time_modal_widget_cubit.freezed.dart';

class PlansAddNotificationTimeModalWidgetCubit extends Cubit<PlansAddNotificationTimeModalWidgetState> {
  PlansAddNotificationTimeModalWidgetCubit() : super(const PlansAddNotificationTimeModalWidgetState.initial());
}
