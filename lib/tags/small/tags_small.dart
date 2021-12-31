import 'package:design_system/colors/colors.dart';
import 'package:design_system/tags/tag_enums.dart';
import 'package:design_system/typography/typography.dart';
import 'package:design_system/utils/consts.dart';
import 'package:flutter/material.dart';

//TODO: Activate the selected and unselected tag

///Returns a tag widget with a default postive color.
///
///Constructors are
///
/// [color] to define the colors of the borders and background of the tag
/// [dismissable] default is false. Defines whether the tag is a dissmissable type.
/// [onCancel] fires when the tag is dissmied.
/// [type] default is outline. Defines whether the tag is an outline or a fill.
class TagSmall extends StatefulWidget {
  final Color? color;
  final bool? dismissable;
  // final bool? isSelected;
  final void Function()? onCancel;
  final TagTypes? type;
  // ignore: sort_constructors_first
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

  Color backgroundColor({Color? color, TagTypes? type}) {
    if (color == null) {
      if (type == TagTypes.filled) {
        return LightThemeColors.backgroundPositive.withOpacity(.2);
      } else {
        return Colors.transparent;
      }
    } else if (type == TagTypes.outline) {
      return Colors.transparent;
    } else {
      return color.withOpacity(.2);
    }
  }

  Color borderColor({Color? color, TagTypes? type}) {
    if (color == null) {
      if (type == TagTypes.filled) {
        return Colors.transparent;
      } else {
        return LightThemeColors.backgroundPositive.withOpacity(.2);
      }
    } else if (type == TagTypes.outline) {
      return color.withOpacity(.2);
    } else {
      return Colors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!isDismissed) {
      return Align(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: backgroundColor(color: widget.color, type: widget.type),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                width: 2,
                color: borderColor(color: widget.color, type: widget.type),
              )),
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
