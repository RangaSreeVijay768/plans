// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:beebloom_water_tracker/app/core/database/database.dart' as _i3;
import 'package:beebloom_water_tracker/app/core/network/beebloom/beebloom_client.dart'
    as _i5;
import 'package:beebloom_water_tracker/app/core/network/dio_client.dart' as _i7;
import 'package:beebloom_water_tracker/app/core/network/rest_client.dart'
    as _i6;
import 'package:beebloom_water_tracker/app/core/services/awesome_notifications_serv%CC%A8ice.dart'
    as _i4;
import 'package:beebloom_water_tracker/app/core/services/vibrations_service.dart'
    as _i11;
import 'package:beebloom_water_tracker/app/daos/task_activity_record_dao.dart'
    as _i8;
import 'package:beebloom_water_tracker/app/daos/user_account_dao.dart' as _i9;
import 'package:beebloom_water_tracker/app/services/user_accounts.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AppDatabase>(_i3.AppDatabase());
    gh.singleton<_i4.AwesomeNotificationsService>(
        _i4.AwesomeNotificationsService());
    gh.singleton<_i5.BeebloomClient>(_i5.BeebloomClient());
    gh.singleton<_i6.BeebloomService>(_i6.BeebloomService());
    gh.singleton<_i7.DioClient>(_i7.DioClient());
    gh.singleton<_i8.TaskActivityRecordsDao>(
        _i8.TaskActivityRecordsDao(gh<_i3.AppDatabase>()));
    gh.singleton<_i9.UserAccountsDao>(
        _i9.UserAccountsDao(gh<_i3.AppDatabase>()));
    gh.singleton<_i10.UserAccountsService>(_i10.UserAccountsService());
    gh.singleton<_i11.VibrationsService>(_i11.VibrationsService());
    return this;
  }
}
