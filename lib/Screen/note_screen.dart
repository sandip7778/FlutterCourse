import 'package:flutter/material.dart';
class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});


  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {

  TextEditingController controller = TextEditingController();
  List<String> note = [];

  void addItem(){
    if(controller.text.isNotEmpty){
      setState(() {
        note.add(controller.text);
        controller.clear();
      });
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Note Screen",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: note.length,
                itemBuilder: (context,index){
                  return ListTile(
                    title: Text("${note[index]}"),
                  );
                }
            ),
          )
        ],
      ),
     bottomNavigationBar: Container(
       width: double.infinity,
       height: 120,
       color: Colors.red,
       child: SafeArea(
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 16),
           child: Row(
             children: [
               Expanded(child:  TextField(
                 keyboardType: TextInputType.phone,
                 controller: controller,
                 decoration: InputDecoration(
                     hintText: "Enter Note",
                     border: InputBorder.none
                 ),
               ),),
               SizedBox(width: 10,),
               IconButton(onPressed: (){
                 addItem();
               }, icon: Icon(Icons.add)),
             ],
           ),
         )
       ),
     ),
    );
  }
}
