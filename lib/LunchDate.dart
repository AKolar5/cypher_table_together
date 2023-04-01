import 'package:cypher_table_together/UserManJones.dart';

class LunchDate{

  DateTime time = DateTime.now();
  String dining_hall = '';
  UserManJones other_person = UserManJones('');


  LunchDate(int day, int month, int year, int hour, int minute, String hall, UserManJones other){
    time = DateTime(year, month, day, hour, minute);
    dining_hall = hall;
    other_person = other;
  }



}