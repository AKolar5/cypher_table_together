import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cypher_table_together/Calendar.dart';

class UserManJones{

  final CollectionReference profileList =
  FirebaseFirestore.instance.collection('Users');

  String wmEmail = '';
  String firstName = '';
  String socialClass = '';
  String pronouns = '';

  Calendar? calendar;

  UserManJones(String wmEmaill){
    wmEmail = wmEmaill;
    calendar = Calendar();
  }


  bool setUserInfo(String firstName, String socialClass, String pronouns){
    this.firstName = firstName;
    this.socialClass = socialClass;
    this.pronouns = pronouns;

    if (this.firstName.length < 2 || this.firstName.length > 10){
      return false;
    }

    if (this.socialClass.isEmpty){
      return false;
    }

    if (this.pronouns.length < 2 || this.pronouns.length > 10){
      return false;
    }

    return true;

  }

  Future getUsersList() async {
    List itemsList = [];

    try {
      await profileList.get().then((querySnapshot) {
        querySnapshot.docs.forEach((element) {
          itemsList.add(element.data);
        });
      });
      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  String getFirstName(){
    return firstName;
  }

  String getSocialClass(){
    return socialClass;
  }

  String getPronouns(){
    return pronouns;
  }

  String getEmail() {
    return wmEmail;
  }

  Calendar? getCalendar(){
    return calendar;
  }




}