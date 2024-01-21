import 'time_slot.dart';

import 'user.dart';

class BookedTimeSlot {
  final User user;
  final TimeSlot timeSlot;
  final Map<String, dynamic> properties;
  BookedTimeSlot({
    required this.user,
    required this.timeSlot,
    required this.properties,
  });
}
