import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_modal_cubit.freezed.dart';
part 'base_modal_state.dart';

abstract class BaseModalCubit<T> extends BlocBase<T> {
  BaseModalCubit(super.state);

  void openModal();

  void closeModal();
}
