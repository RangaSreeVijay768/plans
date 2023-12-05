import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_payment_conformation_modal_content_widget_state.dart';
part 'plans_payment_conformation_modal_content_widget_cubit.freezed.dart';

class PlansPaymentConformationModalContentWidgetCubit extends Cubit<PlansPaymentConformationModalContentWidgetState> {
  PlansPaymentConformationModalContentWidgetCubit() : super(const PlansPaymentConformationModalContentWidgetState.initial());
}
