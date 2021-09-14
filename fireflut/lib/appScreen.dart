import "package:flutter/material.dart";
import "package:cloud_firestore/cloud_firestore.dart";

class AppScreen extends StatefulWidget {
  const AppScreen({ Key? key }) : super(key: key);

  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {

  CollectionReference _talks = FirebaseFirestore.instance.collection('talks');
  Stream<QuerySnapshot> _stream = FirebaseFirestore.instance.collection('talks').snapshots();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: StreamBuilder<QuerySnapshot> (
            stream: _stream,
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot ){
              if(snapshot.hasError) {
                print('Something went wrong');
              }

              
                return ListView(
                  shrinkWrap: true,
                  children: snapshot.data!.docs.map((document) {
                    Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
                    data['id'] = document.id;
                    return ListTile(
                      title: Text(data['age']),
                      subtitle: Text(data['name']),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          print(data['id']);
                          _talks.doc(data['id'])
                          .delete()
                          .then((value) => print('done deleting'))
                          .catchError((onError) => print('Something broke $onError'));
                        }
                      ),
                    );
                  }).toList(),
                );
              
            },
          ),
        //   ElevatedButton(
        //   child: Text('I dare you to press me'),
        //   onPressed: () {
        //     _talks.add(
        //       {
        //         'talk': 'Some random talks right here',
        //         'bywhom': true
        //       }
        //     ).then((value) => print('User added'))
        //     .catchError((error) => print('There was an error $error'));
        //   },
        // )],
      
    );
  }
}