import 'package:flutter/material.dart';
import 'package:jsonexample/src/features/contact/model/contactmodel.dart';
import '../../utils/launcherutility.dart';

class ContactPageDetails extends StatefulWidget {
  final ContactModel contacts;
  const ContactPageDetails({required this.contacts, Key? key})
      : super(key: key);

  @override
  State<ContactPageDetails> createState() => _ContactPageDetailsState();
}

class _ContactPageDetailsState extends State<ContactPageDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Details"),
      ),
      body: Column(
        children: [

          Image.network(widget.contacts.photo),
          const SizedBox(
            height: 7,
          ),
          Text(
            widget.contacts.name,
            style: const TextStyle(
                fontSize: 29, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, top: 30, right: 25),
            child: Row(
              children: [
                Text(
                  widget.contacts.contact,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 155,
                ),
                InkWell(
                  child: Container(
                    height: 38,
                    width: 34,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.green),
                    child: const Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                    onTap:(){
                      LauncherUtility.makeCall(widget.contacts.contact);
                    }

                ),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                  child: Container(
                    height: 45,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue),
                    child: const Icon(
                      Icons.message,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  onTap:(){
                    LauncherUtility.sendSms(widget.contacts.contact);
                  }

                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, top: 20, right: 25),
            child: Row(
              children: [
                Text(
                  widget.contacts.website,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 55,
                ),
                InkWell(
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: const Icon(
                        Icons.link,
                        color: Colors.blue,
                        size: 26,
                      ),
                    ),
                    onTap:(){
                      LauncherUtility.openUrl(widget.contacts.website);
                    }

                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, top: 20, right: 25),
            child: Row(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Flexible(
                  child: Text(
                    widget.contacts.address,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  width: 195,
                ),
                const Icon(
                  Icons.home,
                  color: Colors.blue,
                  size: 30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
