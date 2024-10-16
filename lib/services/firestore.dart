import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class FirestoreService{
//get collection
final  CollectionReference notes=
FirebaseFirestore.instance.collection('notes');


//creating add notes
Future<void>addNote(String note){
  return notes.add({
    'note':note,
    'timestamp':Timestamp.now(),

  });
}
//reading
Stream<QuerySnapshot>getNotesStream(){
  final notesStream=notes.orderBy('timestamp',descending: true).snapshots();

  return  notesStream;

}
  Future<void>updateNote(docID,String newNote){
    return notes.doc(docID).update({
      'note': newNote,
      'timestamp': Timestamp.now(),
    }
    );
  }
  //for delete
Future<void>deleteNote(String docID){
  return notes.doc(docID).delete();
}


}