import 'package:cypher_table_together/Calendar.dart';

class User{
  String wmEmail = '';
  String firstName = '';
  String socialClass = '';
  String pronouns = '';

  Calendar? calendar;

  User(String wmEmaill){
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