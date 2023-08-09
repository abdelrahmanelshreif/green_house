import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _phoneControler=TextEditingController();
  bool isCorrect = true;
  final _form = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final _passwordControler=TextEditingController();

 bool obsecureText=true;
 @override
  void initState() {
    //_passwordControler.text
    super.initState();
  }
 void toggelpasswordText(){
   obsecureText=!obsecureText;
   setState(() {

   });
 }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          body: GestureDetector(
            onTap: FocusScope.of(context).unfocus,
            child: Padding(
              padding: const EdgeInsets.only(top: 61,left: 20),
              child: SingleChildScrollView(
                child: Form(
                  key: _form,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.arrow_back_ios,color: Colors.grey),
                      SizedBox(height: 20,),
                      Text("Hello",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(height: 10,),
                      Text("Let’s Learn More About Plants",
                        style: TextStyle(fontSize: 20,color: Colors.grey),),
                      SizedBox(height: 28,),
                      _TextFieldTitel("Username"),
                        SizedBox(height: 10,),

                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            children: [
                              TextFormField(
                                  controller: _phoneControler,
                                  obscureText: obsecureText,
                                  validator: (value) {

                                    if (_phoneControler.text.length != 11) {
                                      isCorrect = false;
                                      return "Your number should be 11 digits";
                                    }
                                    if (_phoneControler.text[0] != "0") {
                                      isCorrect = false;
                                      return "Your number should be start with 0";
                                    }

                                    return null;
                                  },

                                decoration:  InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFBFDFF),
                                  suffixIcon: isCorrect
                                      ? Icon(Icons.check,color: Colors.green,)
                                      : Icon(
                                    Icons.check,color: Colors.red,
                                 //   color: Colors.green,
                                  ),

                                  )

                                )
                            ],
                          ),
                        ),
                      SizedBox(height: 28,),
                      _TextFieldTitel("Password"),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: TextFormField(
                          controller: _passwordControler,
                          obscureText: obsecureText,
                          validator: (value) {
                            isCorrect = false;

                            if (_passwordControler.text.length < 6) {
                            return "Password should be more than 6 characters";
                            }
                            else {
                            return null;


                          }},

                            decoration: InputDecoration(
                              suffixIcon:
                              InkWell(
                                onTap: toggelpasswordText,
                                  child: Icon(obsecureText?CupertinoIcons.eye:
                                  CupertinoIcons.eye_slash,color: Colors.black)),
                              filled: true,
                              fillColor: Color(0xFBFDFF),
                           //   hintText: "Password",
                           /* focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,*/



                            ),

                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: Row(
                          children: [
                            Icon(Icons.check_box_outline_blank,color: Colors.grey),
                            SizedBox(width: 5,),
                            Text("Remember me",style: TextStyle(
                              color: Colors.grey,
                            ),),
                            Spacer(),
                            Text("Forget Password?",style: TextStyle(
                              color: Colors.grey,
                            ),),

                          ],
                        ),
                      ),
                      const SizedBox(height: 30,),
                      _LoginButton(),
                      SizedBox(height: 20,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Donot have account?",style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey
                          ),),
                          Text("Sign Up",style: TextStyle(
                            color: Colors.green,
                            fontSize: 15,
                          ),)
                        ],
                      )

                    ],
                  ),
                ),
              ),
            ),
          ),

    );
  }

  Padding _LoginButton() {
    return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Center(
                    child: InkWell(
                      onTap:(){
                        _form.currentState?.validate();
                        setState(() {

                        });

                      } ,
                      child: Container(
                        width: 340,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.green
                        ),
                        child: Center(
                          child: Text("LOGIN",style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          )),
                        ),
                      ),
                    ),
                  ),
                );
  }

  Widget _TextFieldTitel(String text) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(text,style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),)
                ],
              );
  }
}
