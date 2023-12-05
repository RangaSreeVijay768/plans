import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_payment_successful_screen_state.dart';
part 'plans_payment_successful_screen_cubit.freezed.dart';

class PlansPaymentSuccessfulScreenCubit extends Cubit<PlansPaymentSuccessfulScreenState> {
  PlansPaymentSuccessfulScreenCubit() : super(const PlansPaymentSuccessfulScreenState.initial());
}
