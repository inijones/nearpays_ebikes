import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomAppBarItem {
  final String imageData;

  CustomBottomAppBarItem(this.imageData);
}

class CustomBottomAppBar extends StatefulWidget {
  final List<CustomBottomAppBarItem> items;
  final double? height;
  final double? iconSize;
  final Color? backgroundColor;
  final Color? color;
  final Color? textColor;
  final Color? selectedColor;
  final NotchedShape? notchedShape;
  final ValueChanged<int> onTabSelected;

  const CustomBottomAppBar({
    super.key,
    required this.items,
    this.height,
    this.iconSize,
    this.backgroundColor,
    this.color,
    this.textColor,
    this.selectedColor,
    this.notchedShape,
    required this.onTabSelected,
  });

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  int _selectedIndex = 0;

  // Update Index
  _updatedIndex(int index) {
    widget.onTabSelected(index);
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(
      widget.items.length,
      (int index) {
        return _buildTabItem(
          item: widget.items[index],
          index: index,
          onPressed: _updatedIndex,
        );
      },
    );

    return SizedBox(
      child: BottomAppBar(
        elevation: 0,
        height: 70.h,
        color: const Color(0xffF1F6FB),
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 8.0,
            left: 8.0,
            right: 8.0,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: items,
          ),
        ),
      ),
    );
  }

  Widget _buildTabItem({
    CustomBottomAppBarItem? item,
    int? index,
    ValueChanged<int>? onPressed,
  }) {
    Color? color =
        _selectedIndex == index ? widget.selectedColor : widget.color;

    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: InkWell(
          onTap: () => onPressed!(index!),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Image
              SvgPicture.asset(
                item!.imageData,
                color: color,
                height: 24.h,
                width: 24.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
