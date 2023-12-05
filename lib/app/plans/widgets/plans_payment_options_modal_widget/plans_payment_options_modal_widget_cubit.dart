import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_payment_options_modal_widget_state.dart';
part 'plans_payment_options_modal_widget_cubit.freezed.dart';

class PlansPaymentOptionsModalWidgetCubit extends Cubit<PlansPaymentOptionsModalWidgetState> {
  PlansPaymentOptionsModalWidgetCubit() : super(const PlansPaymentOptionsModalWidgetState.initial());
}
