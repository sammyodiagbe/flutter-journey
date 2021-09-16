import 'package:fireflut/utils/sizes.dart';
import "package:flutter/material.dart";

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final GlobalKey _loginformKey = GlobalKey<FormState>();
  @override 
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.all(19),

        child: SingleChildScrollView(
          child: Column(
            
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
                    key: _loginformKey,
                    // autovalidateMode: AutovalidateMode.always,
                    child: Column(
        
                      children: [
                        SizedBox(
                          height: 100,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: Colors.white),
                            validator: (value) {
                              if(value == null || value.isEmpty) {
                                return '*Please enter some text.';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.white60),
                              border: OutlineInputBorder(),
                              hintText: 'Email address',
                              focusColor: Colors.white,
                            )
                          ),
                        ),
                       TextFormField(
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            validator: (value) {
                              if(value == null || value.isEmpty) {
                                return '*Please enter some text.';
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.white60),
                              
                              border: OutlineInputBorder(),
                              hintText: 'Password',
                              focusColor: Colors.white
                              
                            )
                          ),
                          SizedBox(height: 50),
                         Container(
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Container(
                                  child: ElevatedButton(
                                    child: Text('Send me in', style: TextStyle(fontWeight: FontWeight.bold),),
                                    onPressed: (){
                                      // if(_loginformKey.currentState!.)
                                      // if(_loginformKey.currentState!.validate())
                                    },
                                    ),
                                ),
                                OutlinedButton(
                                  onPressed: (){
                                    Navigator.of(context).pushReplacementNamed("signup");
                                  }, 
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
        ),
        )
    );
  }
}