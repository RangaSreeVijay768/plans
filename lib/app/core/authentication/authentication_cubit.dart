import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';
import 'package:beebloom_water_tracker/app/services/user_accounts.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'authentication_cubit.freezed.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  late UserAccountsService userAccountsService;

  AuthenticationCubit() : super(AuthenticationState.initial()) {
    this.userAccountsService = GetIt.instance<UserAccountsService>();
    this.getOrCreateUserAccount();
  }


  getOrCreateUserAccount() async {
    UserAccount userAccount =
        await this.userAccountsService.getOrCreateDefaultUserAccount();
    emit(state.copyWith(userAccount: userAccount));
  }

  updateUserAccount(UserAccount userAccount,
      {BooleanStatus? onboardingStatus}) async {
    await this
        .userAccountsService
        .updateUserAccount(userAccount, onboardingStatus: onboardingStatus);
    emit(state.copyWith(userAccount: userAccount));
  }

  resetUserAccount() {
    this.getOrCreateUserAccount();
  }
}
