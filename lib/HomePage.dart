import 'package:flutter/material.dart';
import 'package:module16_livecoding_test/contactCard.dart';
import 'package:module16_livecoding_test/person.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Person> _contactList = [];
  final _nameController = TextEditingController();
  final _phnController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact list",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
      )),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  hintText: "Name",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _phnController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  hintText: "Mobile Number",
                ),
              ),
              SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final name = _nameController.text;
                    final phn = _phnController.text;
                    if (name.isNotEmpty && phn.isNotEmpty) {
                      _contactList.add(Person(name: name, phnNo: phn));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Contact added successfully")),
                      );
                      _nameController.text="";
                      _phnController.text="";
                      setState(() {});
                    } else {
                       ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Enter Valid Data")),
                      );
                    }
                  },
                  child: Text("Add"),
                ),
              ),
              SizedBox(height: 30),
              Expanded(
                child: ListView.builder(
                  itemCount: _contactList.length,
                  itemBuilder: (context, index) {
                    final person = _contactList[index];
                    return Dismissible(
                      key: Key(DateTime.now().toString()),
                      onDismissed: (direction) {
                        _contactList.removeAt(index);
                         ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Contact deleted successfully")),
                      );
                        setState(() {
                          
                        });
                      },
        
                      child: ContactCard(person: person),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
