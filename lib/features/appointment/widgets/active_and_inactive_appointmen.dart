import 'package:doctor_hunt/core/routing/route_export.dart';

class ActiveAndInactiveAppointmentClockListview extends StatefulWidget {
  const ActiveAndInactiveAppointmentClockListview({super.key});

  @override
  State<ActiveAndInactiveAppointmentClockListview> createState() =>
      _ActiveAndInactiveAppointmentClockListview();
}

class _ActiveAndInactiveAppointmentClockListview
    extends State<ActiveAndInactiveAppointmentClockListview> {
  final List<String> clockItems = [
    '12:30 pm',
    '1:00 pm',
    '1:30 pm',
    '2:00 pm',
    '2:30 pm',
    '3:00 pm',
    '3:33 pm',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: clockItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: selectedIndex == index
                ? ActiveAppointmentItems(time: clockItems[index])
                : InActiveAppointmentClockItem(time: clockItems[index]),
          );
        },
      ),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}

