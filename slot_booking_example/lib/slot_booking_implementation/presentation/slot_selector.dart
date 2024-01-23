import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:slot_booking/models/time_slot.dart';

class SlotChip extends StatelessWidget {
  final TimeSlot slot;

  const SlotChip({Key? key, required this.slot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("${slot.start} - ${slot.end}"), // TODO : date format
    );
  }
}
