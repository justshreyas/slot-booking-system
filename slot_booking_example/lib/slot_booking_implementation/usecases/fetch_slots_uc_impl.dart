import 'package:slot_booking/models/user.dart';
import 'package:slot_booking/models/time_slot.dart';

import 'package:slot_booking/usecases/fetch_slots.dart';

class FetchSlotsUsecaseImpl implements FetchSlotsUsecase {
  @override
  Future<Map<DateTime, List<TimeSlot>>?> call(User user) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
