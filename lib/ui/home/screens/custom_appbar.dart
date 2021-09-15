import 'package:flutter/material.dart';
import 'package:flutter_library/core/utils/date_utils.dart';
import 'package:flutter_library/ui/search/screens/search_screen.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 2, spreadRadius: 2)],
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            CustomDateUtils.getGreeting(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(SearchScreen.route);
            },
            child: TextFormField(
              decoration: const InputDecoration(label: Text('Search...')),
              enabled: false,
            ),
          ),
        ],
      ),
    );
  }
}
