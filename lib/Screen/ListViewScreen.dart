import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {

  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ListViewScreen> {

  List<Map<String,dynamic>> products = [
    {"images": "https://images.ctfassets.net/aub2fvcyp2t8/4K5zV3wblVecV6mEAkSKXh/52d88eeb98288a7ef0e5f8567405aa58/1_0-hi-in?fm=webp&w=3840", "title":"Ecommerce Mobile App designs, the  Mobile App designs, the","price":"2220"},
    {"images": "https://images.ctfassets.net/aub2fvcyp2t8/4K5zV3wblVecV6mEAkSKXh/52d88eeb98288a7ef0e5f8567405aa58/1_0-hi-in?fm=webp&w=3840", "title":"Ecommerce Mobile App designs, the  Mobile App designs, the","price":"320"},
    {"images": "https://images.ctfassets.net/aub2fvcyp2t8/4K5zV3wblVecV6mEAkSKXh/52d88eeb98288a7ef0e5f8567405aa58/1_0-hi-in?fm=webp&w=3840", "title":"Ecommerce Mobile App designs, the  Mobile App designs, the","price":"820"},
    {"images": "https://images.ctfassets.net/aub2fvcyp2t8/4K5zV3wblVecV6mEAkSKXh/52d88eeb98288a7ef0e5f8567405aa58/1_0-hi-in?fm=webp&w=3840", "title":"Ecommerce Mobile App designs, the  Mobile App designs, the","price":"20"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16.0),
        child: ListView.builder(
            itemCount: products.length,

            itemBuilder: (context,index){
              final product = products[index];
              return Card(
                color: Colors.white,
                elevation: 3,
                child: Container(
                  width: double.infinity,
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0   ),
                    child: Row(
                      children: [
                        Container(
                          width: 150,
                          height: double.infinity,
                          child: Image.network('${product['images']}'),
                        ),
                        Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("${product['title']}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),maxLines: 2,),
                                Text("NPR : ${product['price']} /-",style: TextStyle(fontSize: 16,color: Colors.red),)

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
