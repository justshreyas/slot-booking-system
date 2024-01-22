// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:slot_booking/models/booked_time_slot.dart';
import 'package:slot_booking/models/time_slot.dart';

import '../../models/user.dart';
import '../../usecases/book_slot.dart';
import '../../usecases/fetch_slots.dart';

part 'slot_booking_state.dart';

class SlotBookingCubit extends Cubit<SlotBookingState> {
  final BookSlotUsecase bookSlotUsecase;
  final FetchSlotsUsecase fetchSlotsUsecase;

  SlotBookingCubit(this.bookSlotUsecase, this.fetchSlotsUsecase)
      : super(SlotBookingInitial());

  loadSlots(User user) async {
    final result = await fetchSlotsUsecase.call(user);

    if (result != null && result.isNotEmpty) {
      emit(SlotBookingLoadedSlots(result, null));
    } else {
      emit(SlotBookingBookingFailure("Could not load available slots"));
    }
  }

  bookSlot(
    TimeSlot slot,
    User user,
  ) async {
    final result = await bookSlotUsecase.call(slot, user);
    if (result != null) {
      emit(SlotBookingBookingSuccess(result));
    } else {
      emit(SlotBookingBookingFailure("Could not book the selected slot"));
    }
  }

  selectSlot(
    TimeSlot slot,
  ) {
    if (state is SlotBookingLoadedSlots) {
      final availableSlots = (state as SlotBookingLoadedSlots).availableSlots;

      emit(SlotBookingLoadedSlots(availableSlots, slot));
    }
  }

  bool get canBook {
    if (state is SlotBookingLoadedSlots) {
      final candidate = (state as SlotBookingLoadedSlots).selectedSlot;

      return candidate != null && candidate.bookable;
    } else {
      return false;
    }
  }
}
