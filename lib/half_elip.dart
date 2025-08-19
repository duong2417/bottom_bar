import 'package:flutter/material.dart';

class HalfElip extends StatelessWidget {
  const HalfElip({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //     home: Scaffold(
    //   appBar: AppBar(
    //     title: Text('Vẽ nửa trên của elip'),
    //   ),
    //   body: CustomPaint(
    //     size: Size(200,50),
    //     // size: Size(300, 150),
    //     child: CustomFloatingButton(),
    //     painter: HalfEllipsePainter(),
    //   ),
    // ));
    return CustomPaint(child: child, painter: HalfEllipsePainter());
  }
}

class HalfEllipsePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint =
        Paint()
          ..color = Color(0xffF0F0F0)
          ..style = PaintingStyle.fill;

    var paint2 =
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.fill;

    // Shadow paint
    var shadowPaint =
        Paint()
          ..color = Colors.black.withOpacity(1)
          ..style = PaintingStyle.fill
          ..maskFilter = MaskFilter.blur(BlurStyle.normal, 8.0);

    // Assuming the original path is designed based on a certain viewbox,
    // Calculate the translation needed to center the path
    double width = 390; // width of the original SVG viewbox
    double height = size.height + 7; // height of the original SVG viewbox
    double offsetX = (size.width - width) / 2;
    double offsetY = (size.height - height) / 2;

    // Shadow offset
    double shadowOffsetX = 0;
    double shadowOffsetY = 4;

    // Create shadow paths (slightly offset)
    var shadowPath1 = Path();
    shadowPath1.moveTo(
      165.39 + offsetX + shadowOffsetX,
      17.33 + offsetY + shadowOffsetY,
    );
    shadowPath1.cubicTo(
      160.925 + offsetX + shadowOffsetX,
      24.3965 + offsetY + shadowOffsetY,
      167.55 + offsetX + shadowOffsetX,
      32 + offsetY + shadowOffsetY,
      175.909 + offsetX + shadowOffsetX,
      32 + offsetY + shadowOffsetY,
    );
    shadowPath1.lineTo(
      214.091 + offsetX + shadowOffsetX,
      32 + offsetY + shadowOffsetY,
    );
    shadowPath1.cubicTo(
      222.45 + offsetX + shadowOffsetX,
      32 + offsetY + shadowOffsetY,
      229.075 + offsetX + shadowOffsetX,
      24.3965 + offsetY + shadowOffsetY,
      224.61 + offsetX + shadowOffsetX,
      17.33 + offsetY + shadowOffsetY,
    );
    shadowPath1.cubicTo(
      218.41 + offsetX + shadowOffsetX,
      7.5171 + offsetY + shadowOffsetY,
      207.466 + offsetX + shadowOffsetX,
      1 + offsetY + shadowOffsetY,
      195 + offsetX + shadowOffsetX,
      1 + offsetY + shadowOffsetY,
    );
    shadowPath1.cubicTo(
      182.534 + offsetX + shadowOffsetX,
      1 + offsetY + shadowOffsetY,
      171.59 + offsetX + shadowOffsetX,
      7.5171 + offsetY + shadowOffsetY,
      165.39 + offsetX + shadowOffsetX,
      17.33 + offsetY + shadowOffsetY,
    );
    shadowPath1.close();

    var shadowPath2 = Path();
    shadowPath2.moveTo(
      162.728 + offsetX + shadowOffsetX,
      20.0282 + offsetY + shadowOffsetY,
    );
    // shadowPath2.cubicTo(//cạnh trái dưới (ngang)
    //   159.558 + offsetX + shadowOffsetX,
    //   26.422 + offsetY + shadowOffsetY,
    //   153.819 + offsetX + shadowOffsetX,
    //   32 + offsetY + shadowOffsetY,
    //   146.682 + offsetX + shadowOffsetX,
    //   32 + offsetY + shadowOffsetY,
    // );
    // shadowPath2.lineTo(
    //   -9 + offsetX + shadowOffsetX,
    //   32 + offsetY + shadowOffsetY,
    // );
    // shadowPath2.lineTo(
    //   378 + offsetX + shadowOffsetX,
    //   32 + offsetY + shadowOffsetY,
    // );
    // shadowPath2.lineTo(
    //   243.318 + offsetX + shadowOffsetX,
    //   32 + offsetY + shadowOffsetY,
    // );
    shadowPath2.cubicTo(
      //vòng elip bên phải
      236.181 + offsetX + shadowOffsetX,
      32 + offsetY + shadowOffsetY,
      230.442 + offsetX + shadowOffsetX,
      26.422 + offsetY + shadowOffsetY,
      227.272 + offsetX + shadowOffsetX,
      20.0282 + offsetY + shadowOffsetY,
    );
    shadowPath2.cubicTo(
      //vòng elip trái trên
      221.387 + offsetX + shadowOffsetX,
      8.15917 + offsetY + shadowOffsetY,
      209.146 + offsetX + shadowOffsetX,
      0 + offsetY + shadowOffsetY,
      195 + offsetX + shadowOffsetX,
      0 + offsetY + shadowOffsetY,
    );
    shadowPath2.cubicTo(
      //vòng elip trái trên
      180.854 + offsetX + shadowOffsetX,
      0 + offsetY + shadowOffsetY,
      168.613 + offsetX + shadowOffsetX,
      8.15917 + offsetY + shadowOffsetY,
      162.728 + offsetX + shadowOffsetX,
      20.0282 + offsetY + shadowOffsetY,
    );
    shadowPath2.close();

    // Draw shadows first
    canvas.drawPath(shadowPath2, shadowPaint);
    // canvas.drawPath(shadowPath1, shadowPaint);

    // Draw shadows first
    // canvas.drawPath(shadowPath2, shadowPaint);
    // canvas.drawPath(shadowPath1, shadowPaint);

    var path1 = Path();
    path1.moveTo(165.39 + offsetX, 17.33 + offsetY);
    path1.cubicTo(
      160.925 + offsetX,
      24.3965 + offsetY,
      167.55 + offsetX,
      32 + offsetY,
      175.909 + offsetX,
      32 + offsetY,
    );
    path1.lineTo(214.091 + offsetX, 32 + offsetY);
    path1.cubicTo(
      222.45 + offsetX,
      32 + offsetY,
      229.075 + offsetX,
      24.3965 + offsetY,
      224.61 + offsetX,
      17.33 + offsetY,
    );
    path1.cubicTo(
      218.41 + offsetX,
      7.5171 + offsetY,
      207.466 + offsetX,
      1 + offsetY,
      195 + offsetX,
      1 + offsetY,
    );
    path1.cubicTo(
      182.534 + offsetX,
      1 + offsetY,
      171.59 + offsetX,
      7.5171 + offsetY,
      165.39 + offsetX,
      17.33 + offsetY,
    );
    path1.close();

    var path2 = Path();
    path2.moveTo(162.728 + offsetX, 20.0282 + offsetY);
    path2.cubicTo(
      159.558 + offsetX,
      26.422 + offsetY,
      153.819 + offsetX,
      32 + offsetY,
      146.682 + offsetX,
      32 + offsetY,
    );
    path2.lineTo(-9 + offsetX, 32 + offsetY);
    // path2.lineTo(-9 + offsetX, 38 + offsetY);
    // path2.lineTo(-9 + offsetX, 81 + offsetY);
    // path2.cubicTo(-9 + offsetX, 95.3594 + offsetY, -3.35941 + offsetX,
    // 107 + offsetY, 11 + offsetX, 107 + offsetY);
    path2.lineTo(378 + offsetX, 32 + offsetY);
    // path2.cubicTo(392.359 + offsetX, 107 + offsetY, 404 + offsetX,
    //     95.3594 + offsetY, 404 + offsetX, 81 + offsetY);
    // path2.lineTo(404 + offsetX, 38 + offsetY);
    // path2.lineTo(398 + offsetX, 32 + offsetY);
    path2.lineTo(243.318 + offsetX, 32 + offsetY);
    path2.cubicTo(
      236.181 + offsetX,
      32 + offsetY,
      230.442 + offsetX,
      26.422 + offsetY,
      227.272 + offsetX,
      20.0282 + offsetY,
    );
    path2.cubicTo(
      221.387 + offsetX,
      8.15917 + offsetY,
      209.146 + offsetX,
      0 + offsetY,
      195 + offsetX,
      0 + offsetY,
    );
    path2.cubicTo(
      180.854 + offsetX,
      0 + offsetY,
      168.613 + offsetX,
      8.15917 + offsetY,
      162.728 + offsetX,
      20.0282 + offsetY,
    );
    path2.close();

    // Draw main paths on top of shadows
    canvas.drawPath(path2, paint);
    canvas.drawPath(path1, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
