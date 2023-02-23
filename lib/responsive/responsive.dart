import 'package:flutter/material.dart';
class Responsive extends StatefulWidget {

 final Widget mobileScreen;
 final Widget webscreen;
  const Responsive({Key? key, required this.mobileScreen, required this.webscreen}) : super(key: key);

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints)
    {
      if (constraints.maxWidth < 900)
    {
      return widget.mobileScreen;
    }
      else
        {
          return widget.webscreen;
        }
    }

    );
  }
}
