import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:myuipra/utils/routes.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey= GlobalKey<FormState>();
  moveToHome(BuildContext  Context) async{
    if(_formkey.currentState!.validate()){
      Navigator.pushNamed(context, MyRoutes.MainRoute);
      setState(() {

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00824E),
      body: SingleChildScrollView(
        child: Form(

          key: _formkey,
          child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: SizedBox(height: 20,)),
                Image.asset("assets/saman.png"),
                  ColoredBox(color: Color(0xFF00824E).withOpacity(1.0)),

                  Container(
                    width: double.infinity,
                  ),

                  SizedBox(height: 70,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Text("Select any sign in option",style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: 'Lato'),),
                  ),

                  SizedBox(height: 30,),
                  Container(
                    width: 450,
                    height: 60,
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: SignInButtonBuilder(
                      text: "Sign in with Phone number",
                      icon: Icons.phone,
                      onPressed: () {},
                      backgroundColor: Colors.blueGrey[700]!,
                    ),
                  ),

                  SizedBox(height: 20,),
                  Container(
                    width: 450,
                    height: 60,
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: SignInButton(
                      Buttons.Facebook,
                      onPressed: (){},
                    ),
                  ),

                  SizedBox(height: 20,),
                  Container(
                            width: 450,
                            height: 60,
                         padding: EdgeInsets.symmetric(horizontal: 60),
                         child: SignInButton(
                            Buttons.Google,
                            onPressed: ()=> moveToHome(context),
                          ),
                       ),

                  SizedBox(height: 20,),
                  Container(
                    width: 450,
                    height: 60,
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: SignInButton(
                      Buttons.Email,
                      onPressed: (){},
                    ),
                  ),

                  SizedBox(height: 50,),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Roboto'),),
                            SizedBox(width: 5,),
                            Text("Sign up ! here",style: TextStyle(color: Colors.white,fontSize: 19,fontFamily: 'Roboto'),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        ),
      ),

    );
  }
}
