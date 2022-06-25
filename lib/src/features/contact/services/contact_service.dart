///we need to read the json and decode it and then convert it to a model
///-> is for documentation
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:jsonexample/src/features/contact/model/contactmodel.dart';

class ContactServices {
  Future<String> loadRecordsJosnFile() async {
    String data = await rootBundle.loadString("assets/data/records.json");
    return data;
  }

// Read the reocord of json file
  //decode the file
  //convert list<dynamic> to list<ContactModel>

   //                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               we need to convert the function the map inti the instances of contactmodel
  Future<List<ContactModel>> getData() async {
    String rowJson = await loadRecordsJosnFile();
    List<dynamic> decodedData = jsonDecode(rowJson);
    List<ContactModel> contactListModel = decodedData.map((e) => ContactModel.fromJson(e)).toList();
    return contactListModel;
  }
}
