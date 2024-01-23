import 'package:flutter/material.dart';
import 'package:slot_booking/state_management/cubit/slot_booking_cubit.dart';

import 'slot_booking_implementation/presentation/slot_booking_page.dart';
import 'slot_booking_implementation/usecases/book_slot_uc_impl.dart';
import 'slot_booking_implementation/usecases/fetch_slots_uc_impl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Demo App")),
      body: const Placeholder(),
      bottomNavigationBar: MaterialButton(
          color: Colors.blue,
          child: const Text("View Available Slots"),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => SlotBookingPage(
                          cubit: SlotBookingCubit(
                            BookSlotUsecaseImpl(),
                            FetchSlotsUsecaseImpl(),
                          ),
                        )));
          }),
    );
  }
}
