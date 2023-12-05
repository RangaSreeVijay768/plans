import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:basic_utils/basic_utils.dart';
import 'package:beebloom_water_tracker/app/core/constants/notification_constants.dart';
import 'package:beebloom_water_tracker/app/core/database/database.dart';

abstract class AppNotificationutils {
  static NotificationContent getNotificationContentFromPlanRoutine(
      {required PlanRoutine planRoutine, required int id}) {
    NotificationContent notificationContent = NotificationContent(
        id: id,
        channelKey: AppNotificationConstants.defaultChannel,
        title: "Drink " + StringUtils.capitalize(planRoutine.drinkType),
        body: "Update in the app once done");

    return notificationContent;
  }

  static NotificationCalendar getNotificationScheduleFromPlanRoutine(
      {required PlanRoutine planRoutine, required}) {
    NotificationCalendar notificationCalendar = NotificationCalendar(
        hour: planRoutine.time.hour,
        minute: planRoutine.time.minute,
        repeats: true);
    return notificationCalendar;
  }
}
