import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16.0),
        child: ListView.builder(
          itemCount: 20,
            itemBuilder: (context,index){
              return Card(
                color: Colors.white,
                elevation: 3,
                child: Container(
                  width: double.infinity,
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 150,
                          height: double.infinity,
                          child: Image.network('https://images.ctfassets.net/aub2fvcyp2t8/4K5zV3wblVecV6mEAkSKXh/52d88eeb98288a7ef0e5f8567405aa58/1_0-hi-in?fm=webp&w=3840'),
                        ),
                        Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Ecommerce Mobile App designs, the  Mobile App designs, the",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),maxLines: 2,),
                                Text("NPR : 200 /-",style: TextStyle(fontSize: 16,color: Colors.red),)

                              ],
                            )
                        )
                      ],
                    ),
                  ),
                 
                ),
              );
            }
        ),
      ),
    );
  }
}
