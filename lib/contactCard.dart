import 'package:flutter/material.dart';
import 'package:module16_livecoding_test/person.dart';

class ContactCard extends StatelessWidget {
  final Person person;
  const ContactCard({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.grey.shade200,
      shape: RoundedRectangleBorder(),
      child: ListTile(
        leading: Icon(Icons.person,size: 35,color: Colors.grey.shade600,),
        trailing: Icon(Icons.phone,color: Colors.blue,),
        title: Text(person.name,style: Theme.of(context).textTheme.headlineMedium,),
        subtitle: Text(person.phnNo,style: Theme.of(context).textTheme.bodySmall,),

      ),

    );
  }
}