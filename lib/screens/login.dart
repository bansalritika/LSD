import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  GlobalKey _form = GlobalKey();


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        color: Color.fromRGBO(246, 246, 246, 1),
        child: SafeArea(
          child:Form(
            key: _form,
            child: Padding(
              padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
               
                Image.asset("assets/images/image.png", height: 243, width: 291, fit: BoxFit.fitHeight,),
                SizedBox(height: 15,),
                  Container(
                    height: 47,
                    width: 320,
                    padding: EdgeInsets.fromLTRB(10, 0,10, 0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.face,
                          color: Color.fromRGBO(187, 187, 187, 1),
                        ),
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(187, 187, 187, 1),
                        
                        ),
                        border: InputBorder.none,
                        labelText: "Username / Phone number", 
                     ),
                  ),                
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Container(
                    height: 47,
                    width: 320,
                    padding: EdgeInsets.fromLTRB(10, 0,10, 0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.all(Radius.circular(20.0),),
                      ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        // suffixIcon: Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   mainAxisSize: MainAxisSize.min,
                        //   children: <Widget>[
                        //     IconButton(icon: Icon(Icons.clear)),
                        //     IconButton(onPressed: _authBloc.switchObscureTextMode, icon: Icon(snapshot.data ? Icons.visibility: Icons.visibility_off))

                        //   ],
                        // ) Icon(
                        //   Icons.password,
                          
                        //   color: Color.fromRGBO(187, 187, 187, 1),
                        // ),
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(187, 187, 187, 1),
                        ),
                        border: InputBorder.none,
                        labelText: "Password",
                     ),
                  )
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  Container(
                     width: 320,
                     height: 47,
                     child: ElevatedButton(
                    
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(36, 92, 102, 1),
                      


                        textStyle: const TextStyle(
                      
                        //backgroundColor: Color.fromARGB(255, 248, 245, 245),
                          fontSize: 10,
                          fontStyle: FontStyle.normal
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        )
                     
                      ),
                      child: Text("Login", 
                        style: TextStyle(
                        color: Color.fromRGBO(255,255,255,1), 
                        fontSize: 16.0, fontStyle: FontStyle.normal,
                        ), 
                       ),
                  ),
                  
                  ),
                
                  
                ],
            ),
            ),
          ),
          
        ),        
      ),
    );
  }
}
