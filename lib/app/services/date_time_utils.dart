import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

abstract class AppDateTimeUtils {
  static DateFormat defaultTimeForm = DateFormat.Hm();
  static DateFormat defaultTimeSerializableFormat = DateFormat("HH:mm");

  static getEndTimeOfDateTime(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day, 23, 59, 59);
  }

  static getStartTimeOfDateTime(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day, 0, 0, 0);
  }

  static subtract(DateTime dateTime, Duration duration) {
    return dateTime.subtract(duration);
  }

  static add(DateTime dateTime, Duration duration) {
    return dateTime.add(duration);
  }

  static String formatDateTime(DateTime dateTime, DateFormat dateFormat) {
    return dateFormat.format(dateTime);
  }

  static String formatDateToSerializableString(DateTime dateTime) {
    return formatDateTime(dateTime, DateFormat("yyyy-MM-ddTHH:mm:ss"));
  }

  static String formatDateTimeToTimeSerializableString(DateTime dateTime) {
    return formatDateTime(dateTime, DateFormat("HH:mm:ss"));
  }

  static DateTime parseTimeStringToDateTime(String timeString) {
    return defaultTimeSerializableFormat.parse(timeString);
  }

  static formatTimeOfDay(
      {required TimeOfDay timeOfDay, DateFormat? dateFormat}) {
    return formatDateTime(
        getDateTimeFromTimeOfDay(timeOfDay), dateFormat ?? defaultTimeForm);
  }

  static getDateTimeFromTimeOfDay(TimeOfDay timeOfDay) {
    final now = new DateTime.now();
    return new DateTime(
        now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
  }

  static getTimeOfDayFromDateTime(DateTime dateTime){
    return TimeOfDay(hour: dateTime.hour, minute: dateTime.minute);
  }
}
