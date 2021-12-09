// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:zil_admin/Controller/auth_controller.dart';
// import 'package:zil_admin/Models/login_page_hasura.dart';
// import 'package:zil_admin/hasura.dart';
//import 'package:csp_admin/routes/routes.gr.dart';
// import 'package:zil_admin/widgets/Forms_Widgets/textField_login_widget.dart';
// import 'package:flutter/material.dart';
//import 'package:auto_route/auto_route.dart';
// import 'package:zil_admin/widgets/Forms_Widgets/row_wrap_textField.dart';

// import 'package:zil_admin/widgets/Forms_Widgets/form_wrapper_login.dart';
// import 'package:zil_admin/Controller/Login_Page/login_page.dart';
// import 'package:zil_admin/utilities/constants.dart';
// import 'package:zil_admin/pages/overview/overview.dart';
// import 'package:shared/shared.dart';


//import 'package:zil_admin/Controller/Signup_Page/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard_app/Controller/auth_controller.dart';
import 'package:flutter_dashboard_app/Forms_Widgets/form_wrapper_login.dart';
import 'package:flutter_dashboard_app/Forms_Widgets/textField_login_widget.dart';
import 'package:flutter_dashboard_app/utilities/constants.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(

//     );
//   }
// }

// class AddProduct extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  // bool isHiddenPassword = true;

  Map<String, String> _loginUserData = {
    'email': 'abhimanoj.yadav@Careti.com',
    'password': 'test4321',
  };

  _submit() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
    print(_loginUserData);
    AuthController.login(_loginUserData);
  }

  bool _isObscure = false;
  String mode = '';

  void _togglePasswordView() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  // void setState(Null Function() param0) {
  //   _isObscure = !_isObscure;
  // }

  //AddProduct(this.mode);

  // AuthModel _model = AuthModel(HasuraCommonServicesModel());

  // final LoginManagementModel _model = LoginManagementModel();
  TextEditingController controller = new TextEditingController();

  // void saveText(String text) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setString("text", text);
  // }

  // void readText() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? savedValue = prefs.getString("text");
  //   if (savedValue != null) {
  //     controller.text = savedValue;
  //   }
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   readText();
  // }

  @override
  Widget build(BuildContext context) {
    return
        // Card(
        //   child:
        FormWrapperWidget(
      //backgroundColor: Colors.teal,
      style: kLabelStyle,
      decoration: kBoxDecorationStyle,
      label: '${mode} Welcome To Login Page',
      content:
          // Expanded(
          //   child:
          // SingleChildScrollView(
          //     physics: AlwaysScrollableScrollPhysics(),
          //     // padding: EdgeInsets.symmetric(
          //     //   horizontal: 40.0,
          //     //   vertical: 120.0,
          //     // ),
          //     child:
          Form(
        key: _formKey,
        child: Align(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    //mainAxisSize: MainAxisSize.min,
                    padding: EdgeInsets.only(
                        left: 0.0, right: 30.0, top: 20, bottom: 0),
                    //all(10),
                    child: Text(
                      'Username',
                      style: kLabelStyle,
                      //  TextStyle(
                      //   color: Colors.black,
                      //   fontSize: 15,
                      // ),
                    ),
                  ),
                  //),
                  SizedBox(height: 10.0),

                  Container(
                    alignment: Alignment.centerLeft,
                    decoration: kBoxDecorationStyle,
                    height: 60.0,
                    width: 500,
                    child: TextFieldWidget(
                      controller: controller,
                      labeltext: 'Username',
                      hintText: 'Enter valid username',
                      obscureText: false,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'OpenSans',
                      ),
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.blue,
                      ),
                      suffix: const Icon(
                        Icons.star,
                        //color: Colors.purple,
                      ),
                      validator: (value) {
                        if (value!.isEmpty || !value.contains('@')) {
                          return 'Invalid username';
                        }
                        return null;
                      },
                      // onSaved: (value) => _model.email = value,
                      // onChanged: (value) {
                      //   saveText(value);
                      // },
                      // onChanged: ,
                      //validator: (value) => _model.email = '@---.com',
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14.0),
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.blue,
                        ),
                        hintText: 'Enter valid email id as abc@gmail.com',
                        hintStyle: kHintTextStyle,
                      ),
                    ),
                  ),
                  // ),
                ],
              ),
              // Padding(
              //   padding: EdgeInsets.only(
              //       left: 30.0, right: 30.0, top: 10, bottom: 5), //all(10),
              //   child: Text(
              //     'Action',
              //     style: TextStyle(
              //       color: Colors.black,
              //       fontSize: 15,
              //     ),
              //   ),
              // ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    //mainAxisSize: MainAxisSize.min,
                    padding: EdgeInsets.only(
                        left: 0.0, right: 30.0, top: 40, bottom: 0),
                    //all(10),
                    child: Text(
                      'Password',
                      style: kLabelStyle,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    alignment: Alignment.topCenter,
                    decoration: kBoxDecorationStyle,
                    height: 60,
                    width: 500,
                    child: TextFieldWidget(
                      labeltext: 'Password',
                      obscureText: _isObscure ? false : true,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.blue,
                      ),
                      hintText: 'Enter secure password',
                      controller: controller,
                      // onChanged: (value) {
                      //   saveText(value);
                      // },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password required!';
                        } else {
                          return null;
                        }
                      },
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'OpenSans',
                      ),

                      suffix: IconButton(
                        onPressed: () => _togglePasswordView(),
                        icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                      //  IconButton(
                      //    icon: Icons.visibility,
                      //     onPressed: () {},
                      //   //   setState(() {
                      //   //     v = !isHiddenPassword;
                      //   //   });
                      //   // },

                      //   ) ,

                      //     Icon(
                      //   // onPressed: () {
                      //   //   setState(() {
                      //   //     isHiddenPassword = !isHiddenPassword;
                      //   //   });
                      //   // },
                      //   // : Icon(
                      //   //   isHiddenPassword
                      //   //       ? Icons.visibility
                      //   //       : Icons.visibility_off,
                      //   // ),
                      //   Icons.visibility,

                      //   color: Colors.blue,
                      // ),
                      // onSaved: (value) => _model.password = value,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14.0),
                        prefixIcon: const Icon(Icons.lock, color: Colors.blue),
                        hintText: 'Enter valid email id as abc@gmail.com',
                        hintStyle: kHintTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      //   ),
      //),
      onPressed:
          _submit,
      //     () async {
      //   // if (_formKey.currentState!.validate()) {
      //   _formKey.currentState!.save();
      //   await LocalStorageService.instance.set(
      //       key: LocalStorageServiceItems.applicationHeader,
      //       value: "adminportal.common");
      //   Future<OTPVerificationState> response_is =
      //       _model.loginByEmailPassword();

      //   print(response_is);
      //   print("abhimanoj");

      //   String? value = await LocalStorageService.instance
      //       .get(LocalStorageServiceItems.userToken);
      //   if (value != null) {
      //     Navigator.push(
      //         context, MaterialPageRoute(builder: (context) => OverViewPage()));
      //   } else {
      //     print("toekn");
      //     print(value);
      //   }
      // },
    );
    //isAddingProducts ? AddProduct(mode) : AddProduct(),
    //);
  }

  // void setState(Null Function() param0) {}

  // void HiddenPassword() {
  //   setState() {}
  // }
}

// void setState(Null Function() param0) {
// }
