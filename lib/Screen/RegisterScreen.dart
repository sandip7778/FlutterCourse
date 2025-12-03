import 'package:flutter/material.dart';
import 'package:testapp/Screen/Firstapp.dart';
import 'package:testapp/Widget/Button/ElevatedWidget.dart';
import 'package:testapp/Widget/InputWidget/InputField.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Resgister Screen"),
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

                          InputField(hintText: "Name ", icon: Icons.text_fields),
                          SizedBox(height: 20,),
                          InputField(hintText: "Address ", icon: Icons.location_city_rounded),
                          SizedBox(height: 20,),
                          InputField(hintText: "Email ", icon: Icons.email),
                          SizedBox(height: 20,),
                          InputField(hintText: "Phone Number ", icon: Icons.phone),
                          SizedBox(height: 20,),
                          ElevatedWidget(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Firstapp()),);
                              },
                              title: "Register",
                              color: Colors.pink
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
