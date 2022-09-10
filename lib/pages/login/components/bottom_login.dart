import 'package:flutter/material.dart';

class BottomLogin extends StatelessWidget {
  final Color colors;
  final String label;

  const BottomLogin({
    Key? key,
    required this.colors,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isColorWhite = (Colors.white == colors);

    return Container(
      decoration: BoxDecoration(
        color: colors,
        borderRadius: const BorderRadius.all(
          Radius.circular(6.0),
        ),
      ),
      margin: const EdgeInsets.only(left: 16.0, right: 16.0),
      width: double.infinity,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isColorWhite)
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: SizedBox(
                width: 15,
                height: 15,
                child: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/300/300221.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          Text(
            label,
            style: TextStyle(
              color: isColorWhite ? Colors.black : Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
