import 'package:meta/meta.dart';

@immutable
@protected
final class NotificationInfo {
  const NotificationInfo({
    this.notification,
    this.to,
    this.priority,
  });

  factory NotificationInfo.fromJson(Map<String, Object?> json) {
    return NotificationInfo(
      notification: json['notification'] == null
          ? null
          : Notification.fromJson(
              json['notification']! as Map<String, Object?>,
            ),
      to: json['to'] as String?,
      priority: json['priority'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    return {
      'notification': notification?.toJson(),
      'to': to,
      'priority': priority,
    };
  }

  final Notification? notification;
  final String? to;
  final String? priority;
}

@immutable
@protected
final class Notification {
  const Notification({
    this.title,
    this.body,
  });

  factory Notification.fromJson(Map<String, Object?> json) {
    return Notification(
      title: json['title'] as String?,
      body: json['body'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    return {
      'title': title,
      'body': body,
    };
  }

  final String? title;
  final String? body;
}
