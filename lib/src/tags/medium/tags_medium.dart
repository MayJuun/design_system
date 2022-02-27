import 'package:flutter/material.dart';
import 'package:mayjuun_design_system/src/colors/colors.convenience.dart';
import 'package:mayjuun_design_system/src/tags/tag_enums.dart';
import 'package:mayjuun_design_system/src/typography/typography.dart';
import 'package:mayjuun_design_system/src/utils/consts.dart';
import 'package:mayjuun_design_system/src/utils/icon_framer.dart';

//TODO: Activate the selected and unselected tag

///Returns a tag widget with a default postive color.
///
///Constructors are
///
/// [color] to define the colors of the borders and background of the tag
/// [dismissable] default is false. Defines whether the tag is a dissmissable type.
/// [onCancel] fires when the tag is dissmied.
/// [type] default is outline. Defines whether the tag is an outline or a fill.
class TagsMedium extends StatefulWidget {
  final Color? color;
  final bool? dismissable;
  final String? child;
  final Widget? icon;
  // final bool? isSelected;
  final void Function()? onCancel;
  final TagTypes? type;
  // ignore: sort_constructors_first
  const TagsMedium({
    this.color,
    this.dismissable,
    this.icon,
    // this.isSelected,
    this.onCancel,
    this.type,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  _TagsMediumState createState() => _TagsMediumState();
}

class _TagsMediumState extends State<TagsMedium> {
  bool isDismissed = false;

  Color backgroundColor({Color? color, TagTypes? type}) {
    if (color == null) {
      if (type == TagTypes.fill) {
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
      if (type == TagTypes.fill) {
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
          height: 40,
          padding: const EdgeInsets.all(5),
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
              widget.icon == null ? Container() : iconFramer(icon: widget.icon),
              widget.icon == null ? Container() : SpaceConsts.horizontalOne,
              Text(widget.child!,
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
