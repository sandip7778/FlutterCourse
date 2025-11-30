import 'package:flutter/material.dart';
class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
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
                         TextField(
                           decoration: InputDecoration(
                             hintText: "Username",
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(12),
                             ),
                             suffixIcon: Icon(Icons.email)
                           )
                         ),
                          SizedBox(height: 20,),
                          TextField(
                            obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  suffixIcon: Icon(Icons.key)
                              )
                          ),
                          SizedBox(height: 20,),
                          ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                              ),
                              child: Container(
                                width: double.infinity,
                                  height: 60,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(child: Text("Login ",style: TextStyle(fontSize: 18,color: Colors.white),)),
                                  ))
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
