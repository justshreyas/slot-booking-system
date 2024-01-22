import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slot_booking/state_management/cubit/slot_booking_cubit.dart';

class SlotBookingPage extends StatelessWidget {
  final SlotBookingCubit cubit;
  const SlotBookingPage({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Demo App")),
        body: BlocBuilder<SlotBookingCubit, SlotBookingState>(
          bloc: cubit,
          builder: (context, state) {
            switch (state.runtimeType) {
              case SlotBookingLoadedSlots:
                (state as SlotBookingLoadedSlots);
                return const SingleChildScrollView();

              case SlotBookingInProgress:
                return const Center(child: CircularProgressIndicator());

              case SlotBookingBookingSuccess:
                state as SlotBookingBookingSuccess;
                return Center(
                    child: Column(
                  children: [
                    const Icon(Icons.check_circle_rounded),
                    const SizedBox(height: 16),
                    Text(
                        "Slot booked! Attend from ${state.slot.timeSlot.start} to ${state.slot.timeSlot.end}")
                  ],
                ));

              case SlotBookingBookingFailure:
                return Center(
                    child: Column(
                  children:  [
                    const Icon(Icons.cancel_presentation_sharp),
                    const SizedBox(height: 16),
                    const Text(
                        "Slot could not be booked! Try selecting another slot")
                  ],
                ));

              case SlotBookingLoadingSlots:
              default:
                return const Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
