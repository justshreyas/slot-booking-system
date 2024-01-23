import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DaySelectorWidget extends StatelessWidget {
  const DaySelectorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Pick a date"),
            IconButton(
              onPressed: () {},//TODO : launch calendar 
              icon: Icon(Icons.calendar_month_rounded),
            ),
          ],
        ),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                5,
                (index) => Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4.0, vertical: 8.0),
                      child: Placeholder(
                        fallbackWidth: 120,
                      ),
                    )),
          ),
        )
      ],
    );
  }
}
