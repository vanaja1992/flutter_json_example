class ContactModel {
  String name;
  String address;
  String contact;
  String website;
  String photo;

  ContactModel(
      {required this.name,
      required this.address,
      required this.contact,
      required this.website,
      required this.photo});  //default constructor  4 ,its a function ,classname=function name , no return, to initialize variable


// factory constructors - function, function name - classname.surname, return type we can return value

factory ContactModel.fromJson(Map<String,dynamic> json){
ContactModel contactModel = ContactModel(name: json["name"], address: json["address"], contact: json["contact"], website: json["url"], photo: json["photo"]);
return contactModel;
}
}
