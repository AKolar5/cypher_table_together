import 'package:cypher_table_together/User.dart';

class LunchDate{

  DateTime time = DateTime.now();
  String dining_hall = '';
  User other_person = User('');


  LunchDate(int day, int month, int year, int hour, int minute, String hall, User other){
    time = DateTime(year, month, day, hour, minute);
    dining_hall = hall;
    other_person = other;
  }



}