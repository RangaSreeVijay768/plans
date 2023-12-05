import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_payment_conformation_modal_widget_state.dart';
part 'plans_payment_conformation_modal_widget_cubit.freezed.dart';

class PlansPaymentConformationModalWidgetCubit extends Cubit<PlansPaymentConformationModalWidgetState> {
  PlansPaymentConformationModalWidgetCubit() : super(const PlansPaymentConformationModalWidgetState.initial());
}
