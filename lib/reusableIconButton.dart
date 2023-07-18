import 'package:flutter/material.dart';

class ReusableIconButton extends StatelessWidget {
  const ReusableIconButton(
      {super.key, required this.icon, required this.onTap});

  // OnTap = (){};
  final IconData icon;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration:
          const BoxDecoration(color: Color(0xFF4C4F5E), shape: BoxShape.circle),
      child: SizedBox(
        height: 50,
        width: 50,
        child: IconButton(
          onPressed: onTap,
          icon: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
