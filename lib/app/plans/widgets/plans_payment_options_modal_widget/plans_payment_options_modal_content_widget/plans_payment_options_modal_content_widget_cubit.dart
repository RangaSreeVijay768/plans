import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_payment_options_modal_content_widget_state.dart';
part 'plans_payment_options_modal_content_widget_cubit.freezed.dart';

class PlansPaymentOptionsModalContentWidgetCubit extends Cubit<PlansPaymentOptionsModalContentWidgetState> {
  PlansPaymentOptionsModalContentWidgetCubit() : super(const PlansPaymentOptionsModalContentWidgetState.initial());
}
