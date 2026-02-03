import 'package:flutter/material.dart';
class OfferShort extends StatefulWidget {
  const OfferShort({super.key});

  @override
  State<OfferShort> createState() => _OfferShortState();
}

class _OfferShortState extends State<OfferShort> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.redAccent,
          ),
          SafeArea(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Follower",style: TextStyle(color: Colors.white,fontSize: 16),),
                  SizedBox(width: 20,),
                  Text("Following",style: TextStyle(color: Colors.white,fontSize: 16),),
                ],
              )
          ),

          Positioned(
              bottom: 30,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Username",style: TextStyle(color: Colors.white,fontSize: 16),),
                  SizedBox(height: 5,),
                  Text("content of the offer",style: TextStyle(color: Colors.white,fontSize: 16),),
                ],
              )
          ),
          Positioned(
              bottom: 30,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Follower",style: TextStyle(color: Colors.white,fontSize: 16),),
                  SizedBox(height: 5,),
              ]
        )
  )
        ],
      ),
    );
  }
}
