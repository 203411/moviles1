
import 'package:flutter/material.dart';

import 'components/grafica_on_boarding.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class BodyBoardingGraficas extends StatefulWidget {
  const BodyBoardingGraficas({super.key});

  @override
  State<BodyBoardingGraficas> createState() => _BodyBoardingGraficasState();
}

class _BodyBoardingGraficasState extends State<BodyBoardingGraficas>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Graficas(),
    );
  }
}
