
import 'package:cypher_table_together/LunchDate.dart';

class Calendar{
  var dates = [];

  Calendar(){
  }

  void addDate(LunchDate lunchDate){
    dates.add(lunchDate);
  }

  List getDates(){
    return dates;
  }
}