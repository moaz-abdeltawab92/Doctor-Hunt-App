import 'package:doctor_hunt/core/routing/route_export.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 10.0.h),
            child: const CustomCardSearchResult(),
          );
        });
  }
}

