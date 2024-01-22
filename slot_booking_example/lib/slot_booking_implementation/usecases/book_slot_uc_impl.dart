import 'package:slot_booking/models/user.dart';
import 'package:slot_booking/models/time_slot.dart';
import 'package:slot_booking/models/booked_time_slot.dart';
import 'package:slot_booking/usecases/book_slot.dart';

class BookSlotUsecaseImpl implements BookSlotUsecase{
  @override
  Future<BookedTimeSlot?> call(TimeSlot slot, User user) {
    // TODO: implement call
    throw UnimplementedError();
  }

}