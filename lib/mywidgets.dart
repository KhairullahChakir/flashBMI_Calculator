import 'package:flutter/material.dart';

import 'const.dart';

///ReusableCard
///MyIcon // Male female
/// Widget for + and -
/// BottomButton "Calculate"

/// ReusableCard
class ReusableCard extends StatelessWidget {
  final Color? color;   /// ?: This is Dart's null safety feature. color or null
  final Widget? child;
  final VoidCallback?onPress;
  const ReusableCard({super.key, this.onPress,this.color,this.child});   /// Declaring a constructor for NewWidget which takes an optional named parameter named color.


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration( /// Setting decoration for the Container using BoxDecoration to customize its appearance.
          color: color ?? Colors.amber, /// Setting the color of the Container to the value of the color variable.
          /// color is default
          borderRadius: BorderRadius.circular(10),
        ),
        child:child,
      ),
    );
  }
}

class MyIcon extends StatelessWidget {
  final IconData? icon;
  final String? label;

  const MyIcon({super.key, this.icon,this.label,});

  @override
  Widget build(BuildContext context) {
    return  Column( /// center no no no /// use max
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.black,
          size: 80,
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          label!,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}

/// Widget for + and -
class RoundIconButton extends StatelessWidget {

  final VoidCallback onPress;
  final IconData icon;
  const RoundIconButton ({super.key, required this.icon,required this.onPress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 40,
      constraints: const BoxConstraints.tightFor(height: 46.0, width: 56.0),
      fillColor: Colors.amber,
      shape: const CircleBorder(),
      onPressed: onPress,
      child: Icon(icon),
    );
  }
}

class BottomButton extends StatelessWidget {

  final String? title;

  const BottomButton({super.key, @required this.title, @required this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.amber,
        height: 88,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10),
        child:  Center(
          child: Text(title!,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}



