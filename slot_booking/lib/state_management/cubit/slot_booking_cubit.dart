// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:slot_booking/models/booked_time_slot.dart';
import 'package:slot_booking/models/time_slot.dart';

import '../../models/user.dart';

part 'slot_booking_state.dart';

class SlotBookingCubit extends Cubit<SlotBookingState> {
  SlotBookingCubit() : super(SlotBookingInitial());

  loadSlots(User user) {}

  bookSlot(
    TimeSlot slot,
    User user,
  ) {}

  bool get canBook => false;
}
