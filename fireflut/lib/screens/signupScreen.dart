import 'package:fireflut/utils/AuthProvider.dart';
import 'package:fireflut/utils/sizes.dart';
import "package:flutter/material.dart";
import 'package:provider/provider.dart';

class Signup extends StatefulWidget {

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  final _formKey = GlobalKey<FormState>();
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
                child: Text('Create an account.', style: loginSignupHeader)
                )
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(

                    children: [
                      Consumer<AuthProvider>(
                        builder: (context, provider, _) {
                          return provider.signupErrorMessage.isNotEmpty ? Text(provider.signupErrorMessage, style: TextStyle(color: Colors.red, fontSize: 14,
                          fontWeight: FontWeight.bold),) : SizedBox();
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
                            // enabledBorder: OutlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.white60,style:BorderStyle.solid )
                            // ),
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
                          onChanged: (value) {
                            setState(() {
                              password = value;
                            });
                          },
                          validator: (value) {
                            if(value == null || value.isEmpty) {
                              return '*Please enter some text.';
                            }
                            return null;
                          },
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white60),
                            hintText: 'Password',
                            focusColor: Colors.white,
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            
                          )
                        ),
                       
                      ),
                       Container(
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Container(
                                child: Consumer<AuthProvider>(
                                  builder: (context, provider, _) {
                                    return  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(150, 50)
                                      ),
                                    child: provider.creatingAccount ? SizedBox(
                                      height: 20, width: 20,child: CircularProgressIndicator(
                                        color: Colors.white
                                      )) :Text('Create account', style: TextStyle(fontWeight: FontWeight.bold),),
                                    onPressed: (){
                                      if(_formKey.currentState!.validate() ){
                                        provider.createAccount(email, password);
                                      }
                                    },
                                    );
                                  },
                                  
                                ),
                              ),
                              OutlinedButton(
                                onPressed: (){
                                  Navigator.of(context).pushReplacementNamed('login');
                                }, 
                                child: Text('Already have an account.', style: TextStyle(color: Colors.white)
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