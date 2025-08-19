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
    return CustomPaint(painter: HalfEllipsePainter(), child: child);
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
          // ..maskFilter = MaskFilter.blur(BlurStyle.normal, 6.0)
          ..strokeWidth = 3;

    // Assuming the original path is designed based on a certain viewbox,
    // Calculate the translation needed to center the path
    double width = 390; // width of the original SVG viewbox
    double height = size.height + 7; // height of the original SVG viewbox
    double offsetX = (size.width - width) / 2;
    double offsetY = (size.height - height) / 2;

    // Shadow offset
    double shadowOffsetX = 0;
    double shadowOffsetY = -3; //càng giảm càng lên cao//4//-3

    // Create simple shadow path that follows the upper half of ellipse
    var shadowPath1 = Path();

    // Bắt đầu từ điểm trái của ellipse
    shadowPath1.moveTo(
      165.39 + offsetX + shadowOffsetX - 12, //càng giảm càng sang trái
      17.33 + offsetY + shadowOffsetY + 15, //càng tăng càng đi xuống
    );

    // Vẽ đường cong nửa trên của ellipse (shadow)
    shadowPath1.cubicTo(
      //elip trái
      171.59 + offsetX + shadowOffsetX, //càng giảm càng qua trái
      7.5171 +
          offsetY +
          shadowOffsetY, //càng tăng càng đi xuống (qua mặt phẳng bên kia luôn)//ko phải điểm rìa
      182.534 + offsetX + shadowOffsetX,
      1 + offsetY + shadowOffsetY,
      195 + offsetX + shadowOffsetX,
      1 + offsetY + shadowOffsetY, //point giữa (đỉnh)
    );

    shadowPath1.cubicTo(
      //elip phải
      207.466 + offsetX + shadowOffsetX,
      1 + offsetY + shadowOffsetY,
      218.41 + offsetX + shadowOffsetX,
      7.5171 +
          offsetY +
          shadowOffsetY, //vòng nửa phải dưới//càng tăng càng đi xuống
      224.61 + offsetX + shadowOffsetX + 12, //càng tăng càng qua phải
      17.33 +
          offsetY +
          shadowOffsetY +
          15, //càng tăng càng xuống phải (làm hiện line ngang)//point rìa
    );

    // Draw shadows first
    canvas.drawPath(shadowPath1, shadowPaint);

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
