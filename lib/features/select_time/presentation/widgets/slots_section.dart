import 'package:doctor_hunt/core/routing/route_export.dart';

class SlotsSection extends StatelessWidget {
  const SlotsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSlotsGroup('Afternoon', 7, [
          '1:00 PM',
          '1:30 PM',
          '2:00 PM',
          '2:30 PM',
          '3:00 PM',
          '3:30 PM',
          '4:00 PM',
        ]),
        SizedBox(height: 20.0.h),
        _buildSlotsGroup('Evening', 5, [
          '5:00 PM',
          '5:30 PM',
          '6:00 PM',
          '6:30 PM',
          '7:00 PM',
        ]),
      ],
    );
  }

  Widget _buildSlotsGroup(String title, int slotsCount, List<String> slots) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$title $slotsCount slots',
          style: AppTextStyles.slotsSectionText,
        ),
        SizedBox(height: 10.0.h),
        Wrap(
          spacing: 30.0.w,
          runSpacing: 10.0.h,
          children: slots.map((slot) => SlotButton(time: slot)).toList(),
        ),
      ],
    );
  }
}

