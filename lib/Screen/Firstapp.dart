import 'package:flutter/material.dart';

class Firstapp extends StatelessWidget {
  const Firstapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bio Data"),
      ),
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name : Sikshashare ",style: TextStyle(fontSize: 18,color: Colors.red),),
              Text("Address : Siraha 01 ",style: TextStyle(fontSize: 18,color: Colors.red),),
              Text("Email : Sikshashare02@gamil.com ",style: TextStyle(fontSize: 18,color: Colors.red),),
              Row(
                children: [
                  Icon(Icons.account_circle_rounded,size: 24,),
                  SizedBox(width: 10,),
                  Text('Username',style: TextStyle(fontSize: 18,color: Colors.yellow),),
                  SizedBox(width: 20,),
                  Text('UserID'),
                ],
              ),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYyxRDrJKhWSGOwCDdHS5K_6EOY20t0fsUFg&s',
              width: 250,
                height: 250,
              ),

              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(
                  child: Text("Sikshashare",style: TextStyle(fontSize: 24,color: Colors.white),),
                ),
              ),

              SizedBox(height: 15,),

              Container(
                width: 200,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYyxRDrJKhWSGOwCDdHS5K_6EOY20t0fsUFg&s'),
                      ),
                      SizedBox(height: 10,),
                      Text("Category Title",style: TextStyle(fontSize: 18,color: Colors.white),)
                    ],
                  ),
                ),
              ),


              SizedBox(height: 15,),
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Icon(Icons.account_circle_rounded,size: 52,),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Title Name',style: TextStyle(fontSize: 28),),
                          Text('@username',style: TextStyle(fontSize: 16),)
                        ],
                      )
                    ],
                  ),
                ),

              ),



              SizedBox(height: 15,),
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Icon(Icons.account_circle_rounded,size: 52,),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Title Name',style: TextStyle(fontSize: 28),),
                          Text('@username',style: TextStyle(fontSize: 16),)
                        ],
                      )
                    ],
                  ),
                ),

              )

            ],
          )
        ),
      )
    );
  }
}
