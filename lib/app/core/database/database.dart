import 'dart:io';

import 'package:beebloom_water_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_water_tracker/app/core/database/goal_type.dart';
import 'package:beebloom_water_tracker/app/core/database/plan_routines.dart';
import 'package:beebloom_water_tracker/app/core/database/task_activity_goal.dart';
import 'package:beebloom_water_tracker/app/core/database/user_entities.dart';
import 'package:beebloom_water_tracker/app/core/database/water_entities.dart';
// import 'package:beebloom_water_tracker/app/daos/plan_routines_dao.dart';
// import 'package:beebloom_water_tracker/app/daos/task_activity_goal_dao.dart';
import 'package:beebloom_water_tracker/app/daos/task_activity_record_dao.dart';
import 'package:beebloom_water_tracker/app/daos/user_account_dao.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'schema_versions.dart';

part 'database.g.dart';

@DriftDatabase(
  tables: [UserAccounts, TaskActivityRecords, TaskActivityGoals, PlanRoutines],
  // daos: [
  //   UserAccountsDao,
  //   TaskActivityRecordsDao,
  //   TaskActivityGoalsDao,
  //   PlanRoutinesDao
  // ],
)
@singleton
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection()) {}

  @override
  int get schemaVersion => 4;

  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: stepByStep(
        from1To2: (m, schema) async {},
        from2To3: (m, schema) async {
          try {
            await m.addColumn(
                schema.userAccounts, schema.userAccounts.dateOfBirth);
            await m.addColumn(
                schema.userAccounts, schema.userAccounts.onboardingStatus);
          } catch (e) {
            print(e);
          }
        },
        from3To4: (m, schema) async {
          try {
            await m.addColumn(
                schema.userAccounts, schema.userAccounts.wakeUpTime);
            await m.addColumn(
                schema.userAccounts, schema.userAccounts.sleepTime);
          } catch (e) {
            print(e);
          }
        },
      ),
    );
  }
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'waterdb.sqlite'));

    return NativeDatabase.createInBackground(file);
  });
}
