import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class AppNotificationConstants {
  static String defaultChannel = "default_channel";
  static String defaultChannelGroup = "defaultChannelGroup";
  static String defaultChannelGroupName = "defaultChannelGroupName";
  static String defaultChannelName = "Basic notifications";
  static String defaultChannelDescription =
      "Notification channel for basic tests";
  static Color defaultColor = Color(0xFF9D50DD);
  static Color ledColor = Colors.white;

  static NotificationChannelGroup createChannelGroup(
      String channelGroupKey, String channelGroupName) {
    return NotificationChannelGroup(
        channelGroupKey: channelGroupKey, channelGroupName: channelGroupName);
  }
}
