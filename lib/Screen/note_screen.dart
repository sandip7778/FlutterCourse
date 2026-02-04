import 'package:flutter/material.dart';
class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});


  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {

  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  List<NoteModel> note = [];

  void addItem(){
    if(titleController.text.isNotEmpty && contentController.text.isNotEmpty){
      setState(() {
        note.add(NoteModel(title: titleController.text, content: contentController.text, createdAt: DateTime.now().toString()));
        titleController.clear();
        contentController.clear();
      });
    }
  }

  void deleteItem(int index){
    setState(() {
      note.removeAt(index);
    });
  }

  void updateItem(int index , NoteModel notes){
    TextEditingController titleController = TextEditingController(text: notes.title);
    TextEditingController contentController = TextEditingController(text: notes.content);

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Update Note"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                      hintText: "Title"
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: contentController,
                  decoration: InputDecoration(
                      hintText: "Content"
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  setState(() {
                   note[index].title = titleController.text;
                   note[index].content = contentController.text;
                  });
                  Navigator.pop(context);
                },child: Text("Update"))

              ],
            )
          );
        }
    );

  }

  void addSheet(){
    showModalBottomSheet(
        context: context,
        builder: (context){
          return Container(
            width: double.infinity,
            height: 380,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text("Add Note",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                      hintText: "Title"
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    controller: contentController,
                    decoration: InputDecoration(
                        hintText: "Content"
                    ),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    addItem();
                  }, child: Text("Add"))
                ],
              ),
            ),
          );
        }
    );
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
                  final item = note[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.white,
                      child: ListTile(
                        title: Text("${item.title}",style: TextStyle(fontSize: 22),),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${item.content}",),
                            Text("${item.createdAt}",)
                          ],
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                          InkWell(child: Icon(Icons.edit),onTap: (){
                            updateItem(index, item);
                          },),
                          SizedBox(width: 10,),
                            InkWell(child: Icon(Icons.delete,color: Colors.redAccent,),onTap: (){
                              deleteItem(index);
                            },),
                        ],),
                      ),
                    ),
                  );
                }
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          addSheet();
        },
        child: Icon(Icons.add,size: 32,),
      ),
    );
  }
}

class NoteModel{
  String title;
  String content;
  String createdAt;

  NoteModel({required this.title,required this.content,required this.createdAt});

  void operator [](int other) {}
}
