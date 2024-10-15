import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_app/services/firestore.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //firestore
  final FirestoreService firestoreService=FirestoreService();

  //text container
  final TextEditingController textController=TextEditingController();
//opening a dialog
  void openNoteBox({String? docID}){
    showDialog(context: context,
        builder: (context)=>AlertDialog(
      content: TextField(
        controller: textController,
      ),
          actions: [
            ElevatedButton(onPressed: (){
              if(docID==null){
                firestoreService.addNote(textController.text);
              }
              //
              // update xisting node
              else{
                firestoreService.updateNote(docID, textController.text);
              }

              //clearing the console after we are done
              textController.clear();
              //closing the box

              Navigator.pop(context);

            }, child: Text("add"),
            ),
          ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("notes"),),
      floatingActionButton: FloatingActionButton(
        onPressed: openNoteBox

      ,
      child: Icon(Icons.add),),
      body: StreamBuilder<QuerySnapshot>(stream: firestoreService.getNotesStream(),
      builder: (context, snapshot){
        if(snapshot.hasData){
          List notesList=snapshot.data!.docs;
          // dispalying  list

          return ListView.builder(
            itemCount: notesList.length,
            itemBuilder: (context,index){

            //getting each individual
DocumentSnapshot document = notesList[index];
String docID=document.id;


//getting note
          Map< String,dynamic>data=document.data()  as Map<String,dynamic>;

          String noteText=data['note'];

    // updating notes



          //display listTiles
return  ListTile(
  title: Text(noteText),
  trailing: Row(
    mainAxisSize: MainAxisSize.min,

    children: [
      //update
      IconButton(onPressed: ()=>openNoteBox(docID: docID)

      ,
          icon: Icon(Icons.settings)),
//delete
      IconButton(onPressed: ()=>firestoreService.deleteNote(docID),



          icon: Icon(Icons.delete)),
    ],
  ),

);



          },);
        }
        else{
          return Text("no notes ");
        }

      },
      ),
    );
  }
}
