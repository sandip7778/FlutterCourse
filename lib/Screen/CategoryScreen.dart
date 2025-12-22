import 'package:flutter/material.dart';
class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
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
        centerTitle: false,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text("Category Screen",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/back_h.png'),
              fit: BoxFit.cover
            )
          ),
        ),
        actions: [
          // BottomSheetModal
          IconButton(onPressed: (){
            showModalBottomSheet(
                context: context,
                builder: (context){
                  return Container(
                    width: double.infinity,
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
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
                             SizedBox(width: 20,),
                             Text("Sikshashare",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                           ],
                          ),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                              SizedBox(width: 20,),
                              Text("Add account")
                            ],
                          ),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.logout)),
                              SizedBox(width: 20,),
                              Text("Logout")
                            ],
                          ),

                        ],
                      ),
                    ),
                  );
                }
            );
          }, icon: Icon(Icons.search)),
          // Custom Dialog
          IconButton(onPressed: (){
            showDialog(
                context: context,
                builder: (context){
                  return Dialog(
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Title",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Text("Description",style: TextStyle(fontSize: 14),),
                          ],
                        ),
                      ),
                    ),
                  );
                }
            );

          }, icon: Icon(Icons.notifications)),
          //  AlertDialog
          IconButton(onPressed: (){

            showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    title: Text("Conform"),
                    content: Text("Are you sure want to delete this item"),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("No")),
                      ElevatedButton(onPressed: (){
                        print("Delete Successfull");
                        Navigator.pop(context);

                      }, child: Text("Delete"))
                    ],

                  );
                }
            );
          }, icon: Icon(Icons.more_vert)),
        ],
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
      )
    );
  }
}
