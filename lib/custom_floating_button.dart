import 'package:flutter/material.dart';
import 'package:flutter_application_1/half_elip.dart';
import 'package:flutter_application_1/home_bottom_bar_style.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({super.key, this.selected = true, this.onPressed});
  final bool selected;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return HalfElip(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: FloatingActionButton(
            materialTapTargetSize: MaterialTapTargetSize.values[0],
            shape: CircleBorder(),
            backgroundColor: HomeBottomBarStyle.pink,
            elevation: 0, // Tắt shadow mặc định của FloatingActionButton
            // child: SvgPicture.asset(
            //   SvgPath.editIcon,
            //   // colorFilter: ColorFilter.mode(
            //   //   selected == false ? HomeBottomBarStyle.red : Colors.white,
            //   //   BlendMode.srcIn, //mode pha trộn
            //   // )
            // ),
            onPressed: onPressed,
            child: Icon(
              Icons.edit, // Placeholder for the actual SVG icon
              color: selected ? Colors.white : HomeBottomBarStyle.grey,
            ),
          ),
        ),
      ),
    );
    // if (selected)
    //   Text('shop4', style: TextStyle(color: HomeBottomBarStyle.red))
  }
}
