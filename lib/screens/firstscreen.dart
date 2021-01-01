
import 'package:flutter/material.dart';
import 'package:task1/argument.dart';
import 'package:task1/screens/passingargument.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username;
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        margin: EdgeInsets.symmetric(horizontal:12.0 ,vertical:20.0 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:100.0),
              child: Text("Login",style: TextStyle(color: Colors.red,fontSize: 32.0,
                  fontFamily:'Merriweather',
                  fontWeight: FontWeight.w900),),
            ),
            SizedBox(height: 70.0,),
            Text("YOUR EMAIL :",style: TextStyle(fontSize: 20,fontFamily:'Merriweather',
                fontWeight: FontWeight.w600),),
            SizedBox(height: 8.0,),
            TextField(
              controller: myController,
              decoration: InputDecoration(hintText: 'Enter your email',helperStyle: TextStyle(color: Colors.white70,
                  fontFamily:'Merriweather',
                  fontWeight: FontWeight.w100),
                //suffixIcon: Icon(Icons.email),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                fillColor: Colors.grey.shade100,
                filled: true,
              ),
            ),
            SizedBox(height: 25,),
            Text("PASSWORD :",style: TextStyle(fontSize: 20,fontFamily:'Merriweather',
                fontWeight: FontWeight.w600),),
            SizedBox(height: 8.0,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: 'Enter password',helperStyle: TextStyle(color: Colors.white54,
                  //fontFamily:'Merriweather',
                  fontWeight: FontWeight.w100),
                //suffixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                fillColor: Colors.grey.shade100,
                filled: true,
              ),
            ),
            SizedBox(height: 50,),
            SizedBox(
              width: 300,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left:48.0),
                child: RaisedButton(onPressed: (){
                  Navigator.pushNamed(
                    context,
                    PassArgumentsScreen.routeName,
                    arguments: ScreenArguments(

                      "Welcome ${ username = myController.text}",
                    ),
                  );
                },
                  child: Text("Login",style: TextStyle(fontSize:20,fontFamily:'Merriweather',
                      fontWeight: FontWeight.w700,color: Colors.white),),
                  color: Colors.red,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(38.0)),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Can't login ? ",
                  style:TextStyle(color: Colors.grey,  fontFamily:'Merriweather',
                      fontWeight: FontWeight.w600,fontSize: 12),
                  children: <TextSpan>[
                    TextSpan(text: 'Forget Password', style: TextStyle(color:Colors.red,fontFamily:'Merriweather',
                        fontWeight: FontWeight.w600,fontSize: 12)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),


    );
  }
}
