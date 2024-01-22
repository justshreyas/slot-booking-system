import 'package:slot_booking/models/booked_time_slot.dart';

import '../models/time_slot.dart';
import '../models/user.dart';

abstract class BookSlotUsecase{
  Future<BookedTimeSlot?> call(
     TimeSlot slot,
    User user,
  );
}