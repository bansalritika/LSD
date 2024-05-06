import 'dart:js_util';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                          fontFamily: 'Nunito Sans',
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
                          fontFamily: 'Nunito Sans',
                          color: Color.fromRGBO(187, 187, 187, 1),
                        ),
                        border: InputBorder.none,
                        labelText: "Password",
                     ),
                  )
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(200, 4,0, 0),

  
                    child: Text("Forget Password", style: TextStyle(
                      color: Color.fromRGBO(165, 165, 165, 1),
                    ),),
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  Container(
                   // padding: EdgeInsets.fromLTRB(0, 0, 0, 4),
                     width: 320,
                     height: 47,
                     child: ElevatedButton(
                    
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(36, 92, 102, 1),
                      


                        textStyle: const TextStyle(
                      
                        //backgroundColor: Color.fromARGB(255, 248, 245, 245),
                          fontSize: 10,
                          fontFamily: 'Nunito Sans',
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        )
                     
                      ),
                      child: Text("Login", textAlign: TextAlign.center,
                        style: TextStyle(
                          
                        color: Color.fromRGBO(255,255,255,1), 
                        fontSize: 16.0, fontStyle: FontStyle.normal,
                        ), 
                       ),
                  ),
                  
                  ),
                  SizedBox(height: 5,),
                  Row(
                  children: <Widget>[
                    Expanded(
                      child: Divider(
                        indent: 15.0,
                        endIndent: 10.0,
                        thickness: 1,
                      )
                    ),       

                  Text('Or',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Color(0xFFACACAC),
                  fontSize: 12,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w600,
                  height: 0.14,
            ),),        

                  Expanded(
                  child: Divider(
                    indent: 10.0,
                    endIndent: 28.0,
                    thickness: 1,
                  )
                  ),
                  ]
                 ),
                 SizedBox(height: 5,),
                  
                Row(children: [
                  Container(
                     //color:  Color.fromRGBO(255, 255, 255, 1),

                    child: Row(children: [
                      //Image.asset("assets/images/image.png", height: 40,width: 40,),
                      ElevatedButton(
                    
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                                              


                        textStyle: const TextStyle(
                      
                        //backgroundColor: Color.fromARGB(255, 248, 245, 245),
                          fontSize: 10,
                          fontFamily: 'Nunito Sans',
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        )
                     
                      ),
                      
                      child: Text("Google", textAlign: TextAlign.center,
                        style: TextStyle(
                          
                        color: Color.fromRGBO(105, 105, 105, 1), 
                        fontSize: 16.0, fontStyle: FontStyle.normal,
                        ), 
                       ),
                  ),
                  SizedBox(width: 100,),
                  ElevatedButton(
                    
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                                              


                        textStyle: const TextStyle(
                      
                        //backgroundColor: Color.fromARGB(255, 248, 245, 245),
                          fontSize: 10,
                          fontFamily: 'Nunito Sans',
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        )
                     
                      ),
                      
                      child: Text("Facebook", textAlign: TextAlign.center,
                        style: TextStyle(
                          
                        color: Color.fromRGBO(105, 105, 105, 1), 
                        fontSize: 16.0, fontStyle: FontStyle.normal,
                        ), 
                       ),
                  ),
                    ],),
//                     child: ElevatedButton.icon(
//     onPressed: (){
//       print("You pressed Icon Elevated Button");
//     },
//     Image.asset("assets/images/image.png", height: 243, width: 291, fit: BoxFit.fitHeight,), 
//     icon: Icon(Icons.inbox),  //icon data for elevated button
//     label: Text("Google"), //label text 
// )
                  ),
                  // Container(
                
                    
                  //   height: 47,
                  //   width: 152,
                  //   child: ElevatedButton(
                    
                  //     onPressed: () {},
                  //     style: ElevatedButton.styleFrom(
                  //       backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                                              


                  //       textStyle: const TextStyle(
                      
                  //       //backgroundColor: Color.fromARGB(255, 248, 245, 245),
                  //         fontSize: 10,
                  //         fontFamily: 'Nunito Sans',
                  //       ),
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(20)
                  //       )
                     
                  //     ),
                      
                  //     child: Text("Google", textAlign: TextAlign.center,
                  //       style: TextStyle(
                          
                  //       color: Color.fromRGBO(105, 105, 105, 1), 
                  //       fontSize: 16.0, fontStyle: FontStyle.normal,
                  //       ), 
                  //      ),
                  // ),
                  // ),
                  // const Spacer(flex:1),
                  // Container(
                  //   height: 47,
                  //   width: 152,
                  //   color: Colors.white,
                  // )
                ],),

                SizedBox(height: 2,),

                Row(
                  children: <Widget>[
                    Expanded(
                      child: Divider(
                        indent: 15.0,
                        endIndent: 10.0,
                        thickness: 1,
                      )
                    ),       

                  Text("Don't have an account yet",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Color(0xFFACACAC),
                  fontSize: 12,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w600,
                  height: 0.14,
            ),),        

                  Expanded(
                  child: Divider(
                    indent: 10.0,
                    endIndent: 28.0,
                    thickness: 1,
                  )
                  ),
                  ]
                 ),
                 Column(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [Text("Sign up", textAlign: TextAlign.center,)]
                  
                 )
                  
                ],
            ),
            ),
          ),
          
        ),        
      ),
    );
  }
}
