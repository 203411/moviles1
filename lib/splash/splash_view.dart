import 'dart:ui' as ui;
import 'package:actividad1/datos/components/on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  ui.Image? image;

  @override
  void initState() {
    super.initState();
    _loadImage('assets/images/splash.png');
    _toOnboarding();
  }

  _toOnboarding() async {
    await Future.delayed(const Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => OnBoarding(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: CustomPaint(
                painter: _SplashCanvas(image),
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.50,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: CustomPaint(
                painter: _SplashCanvasCenter(image),
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: CustomPaint(
                painter: _SplashCanvasAbajo(image),
              ),
            ),
          ),
        )
      ],
    ));
  }

  _loadImage(String path) async {
    final data = await rootBundle.load(path);
    final bytes = data.buffer.asUint8List();
    final image = await decodeImageFromList(bytes);
    setState(() => this.image = image);
  }
}

class _SplashCanvas extends CustomPainter {
  final ui.Image? imageCanvas;
  const _SplashCanvas(this.imageCanvas);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = ui.Color.fromARGB(255, 99, 170, 112);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;
    final path = Path();
    path.lineTo(-5, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.75,
        size.width * 0.35, size.height * 0.55);
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.35,
        size.width * 0.8, size.height * 0.45);
    path.quadraticBezierTo(
        size.width * 0.9, size.height * 0.5, size.width, size.height * 0.45);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class _SplashCanvasCenter extends CustomPainter {
  final ui.Image? imageCanvas;
  const _SplashCanvasCenter(this.imageCanvas);

  @override
  void paint(ui.Canvas canvas, ui.Size size) {
    final paint = Paint();
    canvas.scale(0.24, 0.24);
    canvas.drawImage(
        imageCanvas!, Offset(size.width * 1.3, size.height * 1), paint);
    final textStyle = TextStyle(
      color: Colors.black,
      fontSize: 50,
      fontWeight: FontWeight.bold,
      fontFamily: 'Roboto',
    );
    final textSpan = TextSpan(
      text: '',
      style: textStyle,
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    textPainter.paint(
      canvas,
      Offset(size.width * 2.3 - textPainter.width * 0.5,
          size.height * 3.5 - textPainter.height * 0.5),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class _SplashCanvasAbajo extends CustomPainter {
  final ui.Image? imageCanvas;
  const _SplashCanvasAbajo(this.imageCanvas);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = ui.Color.fromARGB(255, 99, 170, 112);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;
    final path = Path();

    path.moveTo(size.width * 0.03, size.height);
    path.quadraticBezierTo(size.width * 0.45, size.height * 0.5,
        size.width * 0.63, size.height * 0.6);
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.65, size.width * 0.97, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
