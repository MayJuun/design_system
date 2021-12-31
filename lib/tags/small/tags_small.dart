import 'package:design_system/colors/colors.dart';
import 'package:design_system/tags/tag_enums.dart';
import 'package:design_system/typography/typography.dart';
import 'package:design_system/utils/consts.dart';
import 'package:flutter/material.dart';

//TODO: Activated the selected and unselected tag
class TagSmall extends StatefulWidget {
  final Color? color;
  final bool? dismissable;
  // final bool? isSelected;
  final void Function()? onCancel;
  final TagTypes? type;
  const TagSmall({
    this.color,
    this.dismissable,
    // this.isSelected,
    this.onCancel,
    this.type,
    Key? key,
  }) : super(key: key);

  @override
  _TagSmallState createState() => _TagSmallState();
}

class _TagSmallState extends State<TagSmall> {
  bool isDismissed = false;

  @override
  Widget build(BuildContext context) {
    if (!isDismissed) {
      return Align(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: widget.color == null
                  ? LightThemeColors.backgroundPositive.withOpacity(.2)
                  : widget.color!.withOpacity(.2),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                  width: 1,
                  color: widget.color ?? LightThemeColors.backgroundPositive)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.brightness_high,
                size: 20,
              ),
              SpaceConsts.horizontalOne,
              Text('Label',
                  style: MayJuunType.label3().copyWith(
                    color: widget.color ?? LightThemeColors.backgroundPositive,
                  )),
              SpaceConsts.horizontalOne,
              GestureDetector(
                child: widget.dismissable ?? true
                    ? Icon(
                        Icons.cancel,
                        size: 20,
                        color:
                            widget.color ?? LightThemeColors.backgroundPositive,
                      )
                    : Container(),
                onTap: () {
                  setState(() {
                    isDismissed = true;
                    if (widget.onCancel != null) {
                      widget.onCancel!();
                    }
                  });
                },
              ),
            ],
          ),
        ),
      );
    } else {
      return Container();
    }
  }
}
