import 'package:fireflut/utils/AuthProvider.dart';
import 'package:fireflut/utils/sizes.dart';
import "package:flutter/material.dart";
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final  _loginformKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  @override 
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(
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
                  key: _loginformKey,
                  // autovalidateMode: AutovalidateMode.always,
                  child: Column(

                    children: [
                      Consumer<AuthProvider>(
                        builder: (context, provider, _) {
                          return provider.loginErrorMessage.isNotEmpty ? Text(provider.loginErrorMessage) : Text('');
                        },
                      ),
                      SizedBox(
                        height: 100,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Colors.white),
                          onChanged: (value) {
                            setState(() {
                              email = value;
                            });
                          },
                          validator: (value) {
                            if(value == null || value.isEmpty) {
                              return '*Please enter some text.';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white60),
                            border: UnderlineInputBorder(),
                            hintText: 'Email address',
                            focusColor: Colors.white,
                          )
                        ),
                      ),
                     TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          onChanged: (value) {
                            setState(() {
                              
                              password = value;
                            });
                          },
                          validator: (value) {
                            if(value!.isEmpty) {
                              return '*Please enter some text.';
                            }
                            return null;
                          },
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white60),
                            
                            border: UnderlineInputBorder(),
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
                                child: Consumer<AuthProvider>(
                                  builder: (context, provider, _) {
                                    return ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(150, 50)
                                      ),
                                    child: provider.signingIn ? SizedBox(
                                      height: 20,
                                      width: 20,
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                        

                                      ),
                                    ) :Text('Send me in', style: TextStyle(fontWeight: FontWeight.bold),),
                                    onPressed: (){
                                      // if(_loginformKey.currentState!.)
                                      if(_loginformKey.currentState!.validate()) {
                                        provider.login(email, password);
                                      }
                                    },
                                    );
                                  }
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
        )
    );
  }
}