// import 'package:zil_admin/widgets/Forms_Widgets/textField_widget.dart';
import 'package:flutter/material.dart';

class RowWrapFormContols extends StatelessWidget {
  final Widget child1;
  final Widget child2;

  const RowWrapFormContols({
    Key? key,
    required this.child1,
    required this.child2,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(child: child1),
        Flexible(child: child2),
      ],
    );
  }
}
