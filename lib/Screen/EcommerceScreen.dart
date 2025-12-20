import 'package:flutter/material.dart';
class EcommerceScreen extends StatefulWidget {
  const EcommerceScreen({super.key});

  @override
  State<EcommerceScreen> createState() => _EcommercecreenState();
}

class _EcommercecreenState extends State<EcommerceScreen> {
  List<Map<String,dynamic>> products = [
    {"images": "https://cdn-icons-png.flaticon.com/512/7910/7910224.png", "title":"Fruits","price":"2220"},
    {"images": "https://thumbs.dreamstime.com/b/cute-kawaii-radish-cartoon-icon-illustration-food-vegitable-flat-icon-concept-isolated-cute-kawaii-radish-cartoon-icon-265091565.jpg", "title":"Vegitable","price":"320"},
    {"images": "https://cdn-icons-png.flaticon.com/512/6170/6170624.png", "title":"Diary","price":"820"},
    {"images": "https://cdn-icons-png.freepik.com/512/1046/1046769.png", "title":"Meat","price":"20"},
  ];

  List<Map<String,dynamic>> products1 = [
    {"images": "https://www.eatthis.com/wp-content/uploads/sites/4/2022/12/whole-cooked-chicken.jpg?quality=82&strip=1", "title":"Dark Meat Chicken","price":"380"},
    {"images": "https://img.lb.wbmdstatic.com/vim/live/webmd/consumer_assets/site_images/articles/health_tools/healing_foods_slideshow/1800ss_getty_rf_apples.jpg?resize=750px:*&output-quality=75", "title":"Neturition Apple","price":"220"},
    {"images": "https://i.pinimg.com/736x/e5/02/25/e50225e890395e3b09617906e441fb9a.jpg", "title":"Tomatoes","price":"120"},
    {"images": "https://www.eatthis.com/wp-content/uploads/sites/4/2022/12/whole-cooked-chicken.jpg?quality=82&strip=1", "title":"Dark Meat Chicken","price":"380"},
    {"images": "https://img.lb.wbmdstatic.com/vim/live/webmd/consumer_assets/site_images/articles/health_tools/healing_foods_slideshow/1800ss_getty_rf_apples.jpg?resize=750px:*&output-quality=75", "title":"Neturition Apple","price":"220"},
    {"images": "https://i.pinimg.com/736x/e5/02/25/e50225e890395e3b09617906e441fb9a.jpg", "title":"Tomatoes","price":"120"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/back_h.png'),
                  fit: BoxFit.cover
                ),
                
              ),
              child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child: ClipOval(
                                  child: Image.network(
                                    width: 60,
                                      height: 60,
                                      'https://media.istockphoto.com/id/1682296067/photo/happy-studio-portrait-or-professional-man-real-estate-agent-or-asian-businessman-smile-for.jpg?s=612x612&w=0&k=20&c=9zbG2-9fl741fbTWw5fNgcEEe4ll-JegrGlQQ6m54rg='),
                              ),
        
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text("Hi, Sandip Code",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.location_on,color: Colors.white,),
                                      Text("Siraha - 01, Mahabir Chowk",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                                width: 42,
                                height: 42,
                                child: Icon(Icons.notifications),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Card(
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search",
                                prefixIcon: Icon(Icons.search),
                                border: InputBorder.none
                              ),
                            ),
                          ),
        
                        )
                      ],
                    ),
                  )
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  Card(
                    child: Container(
                        width: double.infinity,
                        height: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network('https://www.shutterstock.com/image-photo/burger-special-discount-banner-blank-260nw-2408928973.jpg',fit: BoxFit.cover,))
                    ),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Category",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.red),),
                      Text("SeeMore",style: TextStyle(color: Colors.redAccent),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    height: 130,
                    child: ListView.builder(
                      itemCount: products.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        final product = products[index];
                        return Container(
                          width: 100,
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                child: ClipOval(
                                  child: Image.network(
                                      width: 60,
                                      height: 60,
                                      '${product['images']}'),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Expanded(child: Text("${product['title']}",style: TextStyle(fontSize: 12),))
                            ],
                          ),
                        );
                      }
              
                    ),
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Best Shop",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.red),),
                      Text("SeeMore",style: TextStyle(color: Colors.redAccent),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    height: 200,
                    child: ListView.builder(
                        itemCount: products1.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          final product1 = products1[index];
                          return Container(
                            width: 180,
                            child: Card(
                              color: Colors.white,
                              child: Column(
                                children: [
                                 ClipRRect(
                                   child: Image.network(
                                     width: double.infinity,
                                     height: 120,
                                     '${product1['images']}',
                                     fit: BoxFit.contain,
                                   ),
                                   borderRadius: BorderRadius.circular(12),
                                 ),
                                  SizedBox(height: 5,),
                                  Text("${product1['title']}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                  Text("Npr :",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                                ],
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
                      Text("Flash Shop",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.red),),
                      Text("SeeMore",style: TextStyle(color: Colors.redAccent),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    height: 200,
                    child: ListView.builder(
                        itemCount: products1.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          final product1 = products1[index];
                          return Container(
                            width: 180,
                            child: Card(
                              color: Colors.white,
                              child: Column(
                                children: [
                                  ClipRRect(
                                    child: Image.network(
                                      width: double.infinity,
                                      height: 120,
                                      '${product1['images']}',
                                      fit: BoxFit.contain,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  SizedBox(height: 5,),
                                  Text("${product1['title']}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                  Text("Npr :",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                                ],
                              ),
                            ),
                          );
                        }

                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
