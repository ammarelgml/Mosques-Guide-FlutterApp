import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';
import '../../../theme/styles.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    Key? key,
    required this.controller,
    required this.list,
    required this.onTap,
  }) : super(key: key);

  final TextEditingController controller;
  final List<String> list;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return SearchField(
      controller: controller,
      suggestions: list.map((e) {
        return SearchFieldListItem(e, child: Text(e));
      }).toList(),
      searchInputDecoration: InputDecoration(
        contentPadding: const EdgeInsets.all(14),
        hintText: 'Search for a mosque',
        hintStyle: kTinyTextStyle,
        prefixIcon: Image.asset('assets/images/search.png'),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      maxSuggestionsInViewPort: 4,
      itemHeight: 50,
      onTap: (item) {
        onTap(item);
      },
      suggestionAction: SuggestionAction.next,
    );
  }
}
