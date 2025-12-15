import 'package:flutter/material.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CartScreen> {
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
          centerTitle: true,
          iconTheme: IconThemeData(
              color: Colors.white
          ),
          title: Text("Cart Screen",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/back_h.png'),
                    fit: BoxFit.cover
                )
            ),
          ),
        ),
        body:Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 16),
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.9,
              ),
              itemBuilder: (context,index){
                final product = products[index];
                return Column(
                  children: [
                    Card(
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        child: Center(
                          child: Text("${product['price']}"),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text("Title Name")
                  ],
                );
              }
          ),
        ),
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 110,
          color: Colors.white,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          onPressed: (){},
                          child: Text("Checkout",style: TextStyle(color: Colors.white,fontSize: 22),)
                      ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        onPressed: (){},
                        child: Text("Checkout",style: TextStyle(color: Colors.white,fontSize: 22),)
                    ),
                  )
                ],
              )
            ),
          ),
        ),
    );
  }
}
