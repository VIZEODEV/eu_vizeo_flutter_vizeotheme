import 'package:flutter/material.dart';
import 'package:vizeo_theme/vizeo_theme.dart';

class VzChip extends StatefulWidget {
  VzChip({
    required this.myLabel,
    this.focus,
    this.height = 30.0,
    this.width = 80.0,
    this.myPadding = const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
  });

  late final String myLabel;
  late final EdgeInsets myPadding;
  final FocusNode? focus;
  final double height;
  final double width;

  @override
  _MyChip createState() => _MyChip();

  InkWell getMyChip() => getMyChip();
}

class _MyChip extends State<VzChip> {
  bool hasFocus = false;
  bool isSelected = false;
  bool isEntered = false;
  late InkWell _chip;

  InkWell getMyChip() {
    return _chip;
  }

  @override
  void initState() {
    super.initState();
    widget.focus?.addListener(() {
      if (widget.focus!.hasFocus) {
        hasFocus = true;
      } else {
        hasFocus = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    final enableColor = isDark ? VzColor.accentDark.withOpacity(0.2) : VzColor.accentLight.withOpacity(0.2);
    final hoverColor = isDark ? VzColor.accentDark.withOpacity(0.4) : VzColor.accentLight.withOpacity(0.4);
    final pressedColor = isDark ? VzColor.accentDark : VzColor.accentLight;

    _chip = InkWell(
      highlightColor: pressedColor,
      borderRadius: BorderRadius.circular(55.0),
      focusNode: widget.focus,
      hoverColor: hoverColor,
      focusColor: hoverColor,
      onTap: () => updateState(),
      child: Center(
        child: Text(
          widget.myLabel,
          style: TextStyle(
            color: _colorText(),
          ),
        ),
      ),
    );

    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(55.0),
        color: isSelected ? pressedColor : enableColor,
      ),
      child: _chip,
    );
  }

  Color? _colorText() {
    return isSelected ? VzColor.textPrimaryLight : null;
  }

  BoxBorder chipFocused() {
    print(hasFocus);
    return hasFocus ? Border.all(width: 2) : Border.all(width: 0);
  }

  void updateState() {
    isSelected = !isSelected;
    setState(() {});
  }
}
