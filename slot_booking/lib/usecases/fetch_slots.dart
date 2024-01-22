import '../models/time_slot.dart';
import '../models/user.dart';

abstract class FetchSlotsUsecase {
  Future<Map<DateTime, List<TimeSlot>>?> call(
    User user,
  );
}
