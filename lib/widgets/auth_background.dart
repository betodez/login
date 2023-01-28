import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [_PurpleBox(), _HeaderIcon(), child],
        ));
  }
}

class _HeaderIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 30),
            child:
                const Icon(Icons.person_pin, color: Colors.white, size: 100)));
  }
}

class _PurpleBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity, //size.height * 0.4,
      decoration: _purpleBackground(),
    );
  }

  BoxDecoration _purpleBackground() => const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(63, 63, 156, 1),
        Color.fromRGBO(190, 70, 178, 1)
      ]));
}
