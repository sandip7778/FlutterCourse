import 'package:flutter/material.dart';

import 'CategoryScreen.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Map<String,dynamic>> products = [
    {"image": "https://images.ctfassets.net/aub2fvcyp2t8/4K5zV3wblVecV6mEAkSKXh/52d88eeb98288a7ef0e5f8567405aa58/1_0-hi-in?fm=webp&w=3840", "title":"Ecommerce Mobile App designs, the  Mobile App designs, the","price":"2220"},
    {"image": "https://images.ctfassets.net/aub2fvcyp2t8/4K5zV3wblVecV6mEAkSKXh/52d88eeb98288a7ef0e5f8567405aa58/1_0-hi-in?fm=webp&w=3840", "title":"Ecommerce Mobile App designs, the  Mobile App designs, the","price":"320"},
    {"image": "https://images.ctfassets.net/aub2fvcyp2t8/4K5zV3wblVecV6mEAkSKXh/52d88eeb98288a7ef0e5f8567405aa58/1_0-hi-in?fm=webp&w=3840", "title":"Ecommerce Mobile App designs, the  Mobile App designs, the","price":"820"},
    {"image": "https://images.ctfassets.net/aub2fvcyp2t8/4K5zV3wblVecV6mEAkSKXh/52d88eeb98288a7ef0e5f8567405aa58/1_0-hi-in?fm=webp&w=3840", "title":"Ecommerce Mobile App designs, the  Mobile App designs, the","price":"20"},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home Screen"),
        backgroundColor: Colors.white,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Category',style: TextStyle(fontSize: 18),),
                  TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryScreen()),);
                      },
                      child: Text("See All")
                  )
                ],
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (context,index){
                      return Card(
                        color: Colors.white,
                        elevation: 3,
                        child: Container(
                          width: 110,
                          height: 120,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0   ),
                            child: Text("data")
                          ),

                        ),
                      );
                    }
                ),
              ),
              SizedBox(height: 20,),
              Card(
                color: Colors.white,
                elevation: 3,
                child: Container(
                  width: double.infinity,
                  height: 180,
                ),
              ),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Category',style: TextStyle(fontSize: 18),),
                  Text("See All")
                ],
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 210,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context,index){
                      final product = products[index];
                      return Card(
                        color: Colors.white,
                        elevation: 3,
                        child: Container(
                          width: 200,
                          height: 200,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0   ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 120,
                                    child: Image.network('${product['image']}'),
                                  ),
                                  SizedBox(height: 10,),
                                  Text('${product['title']}',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),maxLines: 1,),
                                  Text('NPR : ${product['price']}')

                                ],
                              )
                          ),

                        ),
                      );
                    }
                ),
              ),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Category',style: TextStyle(fontSize: 18),),
                  Text("See All")
                ],
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 210,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context,index){
                      final product = products[index];
                      return Card(
                        color: Colors.white,
                        elevation: 3,
                        child: Container(
                          width: 200,
                          height: 200,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0   ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 120,
                                    child: Image.network('${product['image']}'),
                                  ),
                                  SizedBox(height: 10,),
                                  Text('${product['title']}',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),maxLines: 1,),
                                  Text('NPR : ${product['price']}')

                                ],
                              )
                          ),

                        ),
                      );
                    }
                ),
              ),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Category',style: TextStyle(fontSize: 18),),
                  Text("See All")
                ],
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 210,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context,index){
                      final product = products[index];
                      return Card(
                        color: Colors.white,
                        elevation: 3,
                        child: Container(
                          width: 200,
                          height: 200,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0   ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 120,
                                    child: Image.network('${product['image']}'),
                                  ),
                                  SizedBox(height: 10,),
                                  Text('${product['title']}',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),maxLines: 1,),
                                  Text('NPR : ${product['price']}')

                                ],
                              )
                          ),

                        ),
                      );
                    }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
