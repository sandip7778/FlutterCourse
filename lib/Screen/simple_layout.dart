import 'package:flutter/material.dart';
class SimpleLayout extends StatelessWidget {
  const SimpleLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting Screen"),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: Colors.white,
                elevation: 3,
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(Icons.account_circle_rounded),
                      title: Text("Account Setting"),
                      subtitle: Text("Change your account setting"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 3,
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(Icons.account_circle_rounded),
                      title: Text("Account Setting"),
                      subtitle: Text("Change your account setting"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 3,
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(Icons.account_circle_rounded),
                      title: Text("Account Setting"),
                      subtitle: Text("Change your account setting"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 3,
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(Icons.account_circle_rounded),
                      title: Text("Account Setting"),
                      subtitle: Text("Change your account setting"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
              ),

              Card(
                color: Colors.white,
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.account_circle_rounded,size: 52,),
                        title: Text("Account Setting"),
                        trailing: Icon(Icons.more_vert_sharp),
                      ),
                      Container(
                        width: double.infinity,
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYyxRDrJKhWSGOwCDdHS5K_6EOY20t0fsUFg&s',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.favorite_border_outlined,size: 22,),
                          SizedBox(width: 10,),
                          Text("12 Like")
                        ],
                      )
                    ],
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
