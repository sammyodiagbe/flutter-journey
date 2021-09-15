import 'package:fireflut/utils/sizes.dart';
import "package:flutter/material.dart";

class Login extends StatefulWidget {

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  GlobalKey _formKey = GlobalKey<FormState>();
  @override 
  Widget build(BuildContext context) {

    return SafeArea(
      child: Container(
        height: double.infinity,
        padding: EdgeInsets.all(19),
        child: ListView(
          children: [
            SizedBox(
              height: 80,
              
              child: Center(
                child: Text('Spellbatu', style: loginHeaderSize,)
                )
              ),
            SizedBox(
              height: 100,
              
              child: Center(
                child: Text('Login into your account', style: loginSignupHeader)
                )
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Form(
                  key: _formKey,
                  child: Column(

                    children: [
                      SizedBox(
                        height: 100,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Colors.white),
                          
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white60),
                            border: OutlineInputBorder(),
                            hintText: 'Email address',
                            focusColor: Colors.white,
                          )
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white60),
                            
                            border: OutlineInputBorder(),
                            hintText: 'Password',
                            focusColor: Colors.white
                            
                          )
                        ),
                       
                      ),
                       Container(
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Container(
                                child: ElevatedButton(
                  
                                  child: Text('Send me in'),
                                  onPressed: (){},
                                  ),
                              ),
                              TextButton(
                                onPressed: (){}, 
                                child: Text('Create an account', style: TextStyle(color: Colors.white)
                                ),
                                ),
                           ],
                         ),
                       )
                    ],

                  )
                )
              ),
              
          ],
        ),
        )
    );
  }
}