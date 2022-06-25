import 'package:flutter/material.dart';
import 'package:jsonexample/src/features/contact/model/contactmodel.dart';
import 'package:jsonexample/src/features/contact/pages/contactpagedetails.dart';
import 'package:jsonexample/src/features/contact/services/contact_service.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List<ContactModel> contactmodel = [];
  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact App"),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: contactmodel.length,
            itemBuilder: (context, pos) {
              ContactModel contacts= contactmodel[pos] ;
              return ListTile(

                 leading: CircleAvatar(
                   backgroundImage: NetworkImage(contacts.photo)
                 ) ,
                onTap:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ContactPageDetails(contacts: contacts)));
                },
                title:Text(contacts.name) ,
                   subtitle:Text(contacts.contact) ,
              );
            }),
      ),
    );
  }

  Future<void> getData() async {
    ContactServices contactServices = ContactServices();
    List<ContactModel> contactmodelTemp = await contactServices.getData();
    setState(() {
      contactmodel = contactmodelTemp;
    });

  }
}
