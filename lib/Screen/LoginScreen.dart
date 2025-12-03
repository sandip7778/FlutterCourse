import 'package:flutter/material.dart';
import 'package:testapp/Screen/Firstapp.dart';
import 'package:testapp/Screen/RegisterScreen.dart';

import '../Widget/Button/ElevatedWidget.dart';
import '../Widget/InputWidget/InputField.dart';
class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {

  var _offsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Login !",style: TextStyle(fontSize: 24),),
                Text("welcome to login page",style: TextStyle(fontSize: 14),),
                SizedBox(height: 20,),
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 16,horizontal: 12),
                      child: Column(
                        children: [
                          InputField(hintText: "Email ", icon: Icons.email),
                          SizedBox(height: 20,),
                          TextField(
                            obscureText: _offsecure,
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  suffixIcon: IconButton(
                                      onPressed: (){
                                        if(_offsecure){
                                          setState((){
                                            _offsecure= false;
                                          });
                                        }else{
                                          setState(() {
                                            _offsecure = true;
                                          });
                                        }
                                      },
                                      icon: Icon(_offsecure ? Icons.visibility_off : Icons.visibility_outlined)
                                  )
                              )
                          ),
                          SizedBox(height: 20,),
                          ElevatedWidget(
                              onPressed: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Firstapp()),);
                              },
                              title: "Login",
                              color: Colors.red
                          ),
                          SizedBox(height: 20,),
                          TextButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()),);
                              },
                              child: Text("Register Now ")
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
