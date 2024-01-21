part of 'slot_booking_cubit.dart';

@sealed
abstract class SlotBookingState {}

class SlotBookingInitial extends SlotBookingState {}

class SlotBookingLoadingSlots extends SlotBookingState {
  final String message;

  SlotBookingLoadingSlots(this.message);
}

class SlotBookingLoadedSlots extends SlotBookingState {
  final Map<DateTime, List<TimeSlot>> availableSlots;
  final TimeSlot? selectedSlot;

  SlotBookingLoadedSlots(this.availableSlots, this.selectedSlot);
}

class SlotBookingBookingSuccess extends SlotBookingState {
  final BookedTimeSlot slot;

  SlotBookingBookingSuccess(this.slot);
}

class SlotBookingInProgress extends SlotBookingState {}

class SlotBookingBookingFailure extends SlotBookingState {
  final String message;

  SlotBookingBookingFailure(this.message);
}
