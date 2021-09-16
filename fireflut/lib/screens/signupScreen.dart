import 'package:fireflut/utils/sizes.dart';
import "package:flutter/material.dart";

class Signup extends StatefulWidget {

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  final _formKey = GlobalKey<FormState>();
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
                                  child: Text('Create account', style: TextStyle(fontWeight: FontWeight.bold),),
                                  onPressed: (){
                                    if(_formKey.currentState!.validate() ){

                                    }
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