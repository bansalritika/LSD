import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lsd/screens/signUp.dart' show SignUpScreen;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  void togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  void navigateToForgetPassword() {
    // navigation logic here
  }

  void navigateToSignUp() {}

  void _loginUser(String email, String password) {
    // login logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 246, 246, 10),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            _ImageWidget(),
            _EmailInputWidget(
              controller: _emailController,
            ),
            _PasswordInputWidget(
              controller: _passwordController,
              isPasswordVisible: _isPasswordVisible,
              onTogglePasswordVisibility: togglePasswordVisibility,
            ),
            _ForgetPasswordButton(
              onPressed: navigateToForgetPassword,
            ),
            _LoginButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  _loginUser(_emailController.text, _passwordController.text);
                }
              },
            ),
            // _OrSeparator(),
            // _GoogleButton(),
            // _CustomDivider(),
            _SignUpButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/image.png",
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 0.8,
      fit: BoxFit.fitHeight,
    );
  }
}

class _EmailInputWidget extends StatelessWidget {
  final TextEditingController controller;

  const _EmailInputWidget({required this.controller});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          icon: const Icon(
            Icons.face,
            color: Color.fromRGBO(187, 187, 187, 1),
          ),
          labelStyle: const TextStyle(
            fontFamily: 'Nunito Sans',
            color: Color.fromRGBO(187, 187, 187, 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(),
          ),
          labelText: "Username / Phone number / Email Address",
        ),
        validator: (value) {
          if (value!.isEmpty ||
              !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(value)) {
            return 'Enter a valid email!';
          }
          return null;
        },
      ),
    );
  }
}

class _PasswordInputWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool isPasswordVisible;
  final VoidCallback onTogglePasswordVisibility;

  const _PasswordInputWidget({
    required this.controller,
    required this.isPasswordVisible,
    required this.onTogglePasswordVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: TextFormField(
        controller: controller,
        obscureText: !isPasswordVisible,
        decoration: InputDecoration(
          labelText: "Password",
          icon: const Icon(Icons.lock),
          suffixIcon: IconButton(
            onPressed: onTogglePasswordVisibility,
            icon: Icon(
              isPasswordVisible ? Icons.visibility : Icons.visibility_off,
            ),
          ),
          labelStyle: const TextStyle(
            fontFamily: 'Nunito Sans',
            color: Color.fromRGBO(187, 187, 187, 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(),
          ),
        ),
      ),
    );
  }
}

class _ForgetPasswordButton extends StatelessWidget {
  final VoidCallback onPressed;

  const _ForgetPasswordButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        alignment: Alignment.topRight,
        child: const Text(
          "Forget Password",
          style: TextStyle(
            color: Color.fromRGBO(165, 165, 165, 1),
            // decoration: TextDecoration.underline
          ),
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  final VoidCallback onPressed;

  const _LoginButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: SizedBox(
        height: size.height * 0.05,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(36, 92, 102, 1),
            textStyle: const TextStyle(
              fontSize: 10,
              fontFamily: 'Nunito Sans',
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: const Text(
            "Login",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 16.0,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ),
    );
  }
}

class _OrSeparator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _CustomDivider(),
        const Text(
          "Or",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromRGBO(172, 172, 172, 1),
            fontSize: 12,
            fontFamily: 'Nunito Sans',
            height: 0.14,
          ),
        ),
        _CustomDivider(),
      ],
    );
  }
}

class _CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Expanded(
          child: Divider(
        indent: 15.0,
        endIndent: 10.0,
        thickness: 1,
      )),
      Text(
        "Don't have an account yet ?",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color.fromRGBO(172, 172, 172, 1),
          fontSize: 12,
          fontFamily: 'Nunito Sans',
          height: 0.14,
        ),
      ),
      Expanded(
          child: Divider(
        indent: 10.0,
        endIndent: 28.0,
        thickness: 1,
      )),
    ]);
  }
}

class _GoogleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(size.width * 0.3, 0, size.width * 0.3, 0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: const Row(
          children: [
            Icon(
              FontAwesomeIcons.google,
              color: Color.fromRGBO(105, 105, 105, 1),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Google",
              style: TextStyle(
                color: Color.fromRGBO(105, 105, 105, 1),
                fontFamily: "Nunito Sans",
                fontSize: 16.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _SignUpButton extends StatelessWidget {
  final VoidCallback onPressed;

  const _SignUpButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: const Text(
        "Sign up",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Nunito Sans",
          color: Color.fromRGBO(100, 100, 100, 1),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:lsd/screens/signUp.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//  final _formKey = GlobalKey<FormState>();
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   bool _isPasswordVisible = false;

//   void tooglePasswordVisibility() {
//     setState(() {
//       _isPasswordVisible = !_isPasswordVisible;
//     });
//   }

//   void navigateToForgetPassword() {
//     //navigation logic here
//   }



// @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromRGBO(246, 246, 246, 10),
//       body: Form(
//         key: _formKey,
//         child: ListView(
//           children: [
//             _ImageWidget(),
//             _EmailInputWidget(
//               controller: _emailController,
//             ),
//             _PasswordInputWidget(
//               controller: _passwordController,
//         isPasswordVisible: _isPasswordVisible,
//         onTogglePasswordVisibility: _togglePasswordVisibility,
//             ),
//             _ForgetPasswordButton(
//               onPressed: navigateToForgetPassword,
//             ),
//             _LoginButton(
//               onPressed: () {
//                 if (_formKey.currentState!.validate()) {
//                   _formKey.currentState!.save();
//                   _loginUser(_emailController.text, _passwordController.text);
//                 }
//               },
//             ),
//             _SignUpButton(
//               onPressed: navigateToSignUp,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _ImageWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Image.asset(
//       "assets/images/image.png",
//       height: MediaQuery.of(context).size.height * 0.5,
//       width: MediaQuery.of(context).size.width * 0.8,
//       fit: BoxFit.fitHeight,
//     );
//   }
// }

// class _EmailInputWidget extends StatelessWidget {
//   final TextEditingController controller;

//   _EmailInputWidget({required this.controller});

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: TextFormField(
//         controller: controller,
//         decoration: InputDecoration(
//           icon: const Icon(
//             Icons.face,
//             color: Color.fromRGBO(187, 187, 187, 1),
//           ),
//           labelStyle: const TextStyle(
//             fontFamily: 'Nunito Sans',
//             color: Color.fromRGBO(187, 187, 187, 1),
//           ),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(30.0),
//             borderSide: const BorderSide(),
//           ),
//           labelText: "Username / Phone number / Email Address",
//         ),
//          validator: (value) {
//           if (value!.isEmpty ||
//              !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                     .hasMatch(value)) {
//             return 'Enter a valid email!';
//           }
//           return null;
//         },
//       ),
//     );
//   }
// }

// class _PasswordInputWidget extends StatelessWidget {
//   final TextEditingController controller;
//   final bool isPasswordVisible;
//   final VoidCallback onTogglePasswordVisibility;

//   _PasswordInputWidget(
//   controller: _passwordController,
//   isPasswordVisible: _isPasswordVisible,
//   onTogglePasswordVisibility: _isPasswordVisible, // Change _togglePasswordVisibility to _isPasswordVisible
// ),


//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: TextFormField(
//         controller: controller,
//         obscureText: !isPasswordVisible,
//         decoration: InputDecoration(
//           labelText: "Password",
//           icon: const Icon(Icons.lock),
//           suffixIcon: IconButton(
//             onPressed: onTogglePasswordVisibility,
//             icon: Icon(
//               isPasswordVisible
//                   ? Icons.visibility
//                   : Icons.visibility_off,
//             ),
//           ),
//           labelStyle: const TextStyle(
//             fontFamily: 'Nunito Sans',
//             color: Color.fromRGBO(187, 187, 187, 1),
//           ),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(30.0),
//             borderSide: const BorderSide(),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _ForgetPasswordButton extends StatelessWidget {
//   final VoidCallback onPressed;

//  _ForgetPasswordButton(
//   onPressed: _navigateToSignUp, // Change _navigateToForgetPassword to _navigateToSignUp
// ),


//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: onPressed,
//       child: Container(
//         alignment: Alignment.topRight,
//         child: const Text(
//           "Forget Password",
//           style: TextStyle(
//             color: Color.fromRGBO(165, 165, 165, 1),
//             // decoration: TextDecoration.underline
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _LoginButton extends StatelessWidget {
//   final VoidCallback onPressed;

//   _LoginButton({required this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
//       child: SizedBox(
//         height: size.height * 0.05,
//         child: ElevatedButton(
//           onPressed: onPressed,
//           style: ElevatedButton.styleFrom(
//             backgroundColor: const Color.fromRGBO(36, 92, 102, 1),
//             textStyle: const TextStyle(
//               fontSize: 10,
//               fontFamily: 'Nunito Sans',
//             ),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//           ),
//           child: const Text(
//             "Login",
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               color: Color.fromRGBO(255, 255, 255, 1),
//               fontSize: 16.0,
//               fontStyle: FontStyle.normal,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _OrSeparator extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         _CustomDivider(indent: 15.0, endIndent: 10.0),
//         const Text(
//           "Or",
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             color: Color.fromRGBO(172, 172, 172, 1),
//             fontSize: 12,
//             fontFamily: 'Nunito Sans',
//             height: 0.14,
//           ),
//         ),
//         _CustomDivider(indent: 10.0, endIndent: 28.0),
//       ],
//     );
//   }
// }

// class _CustomDivider extends StatelessWidget {
//   final double indent;
//   final double endIndent;

//   _CustomDivider({required this.indent, required this.endIndent});

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Divider(
//         indent: indent,
//         endIndent: endIndent,
//         thickness: _dividerThickness, // Use a named parameter or a constant
//       ),
//     );
//   }
// }

// const _dividerThickness = 1.0; // Define the divider thickness as a constant

// class _GoogleButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Padding(
//       padding: EdgeInsets.fromLTRB(size.width * 0.3, 0, size.width * 0.3, 0),
//       child: ElevatedButton(
//         onPressed: () {},
//         style: ElevatedButton.styleFrom(
//           padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
//           backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//         ),
//         child: const Row(
//           children: [
//             Icon(
//               FontAwesomeIcons.google,
//               color: Color.fromRGBO(105, 105, 105, 1),
//             ),
//             SizedBox(
//               width: 10,
//             ),
//             Text(
//               "Google",
//               style: TextStyle(
//                 color: Color.fromRGBO(105, 105, 105, 1),
//                 fontFamily: "Nunito Sans",
//                 fontSize: 16.0,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _SignUpButton extends StatelessWidget {
//   final VoidCallback onPressed;

//   _SignUpButton({required this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: onPressed,
//       child: const Text(
//         "Sign up",
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           fontFamily: "Nunito Sans",
//           color: Color.fromRGBO(100, 100, 100, 1),
//         ),
//       ),
//     );
//   }
// }
