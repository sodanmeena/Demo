// import 'package:zil_admin/widgets/Forms_Widgets/row_wrap_textField.dart';
import 'package:flutter/material.dart';
// import 'package:zil_admin/widgets/Forms_Widgets/textField_widget.dart';
// import 'package:zil_admin/utilities/constants.dart';

class FormWrapperWidget extends StatelessWidget {
  final Widget content;
  final VoidCallback onPressed;
  final String label;
  //final Color backgroundColor;
  final BoxDecoration decoration;
  //final Color color;
  final TextStyle style;

  const FormWrapperWidget({
    Key? key,
    required this.content,
    required this.onPressed,
    required this.label,
    //required this.backgroundColor,
    required this.style,
    required this.decoration,
    //required this.color,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
        // ListView(
        //   padding: const EdgeInsets.all(8),
        //   children: <Widget>[
        //   Expanded(
        // child:
        Container(
      padding: EdgeInsets.all(20),
      //margin: EdgeInsets.all(60),
      //color: Colors.amber,
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //     begin: Alignment.centerRight,
      //     end: Alignment.bottomCenter,
      //     colors: [
      //       Color(0xFF73AEF5),
      //       Color(0xFF61A4F1),
      //       Color(0xFF478DE0),
      //       Color(0xFF398AE5),
      //     ],
      //     stops: [0.1, 0.4, 0.7, 0.9],
      //   ),
      // ),
      child:
          //  Card(
          //   color: Colors.blue[400],
          //   elevation: 5,
          //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
          //   child:
          Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Padding(
          //   padding: EdgeInsets.all(15),
          //   child: Text(
          //     label,
          //     style: TextStyle(fontSize: 20, color: Colors.white),
          //   ),
          // ),
          // Divider(
          //   indent: 15,
          //   endIndent: 15,
          //   color: Colors.black,
          // ),
          // SizedBox(height: 10),

          content,
          Padding(
            padding: EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: onPressed,
              child: Text(
                'Add',
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
            ),
          )
        ],
      ),
      //),
      //),
    );
    //   ],
    // );
  }
}
