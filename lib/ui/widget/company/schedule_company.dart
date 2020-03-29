import 'package:flutter/material.dart';

class ScheduleCompany extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScheduleCompanyState();

}

class _ScheduleCompanyState extends State<ScheduleCompany>{

  //DateTime now = DateTime(2020, 3, 29, 24, 22, 22, 0, 0);
  DateTime now = DateTime.now();

  final List<WorkingDay> workingList = [
    WorkingDay("Понедельник", "12:00", "00:00"),
    WorkingDay("Вторник", "12:00", "00:00"),
    WorkingDay("Среда", "12:00", "00:00"),
    WorkingDay("Четверг", "12:00", "00:00"),
    WorkingDay("Пятница", "12:00", "00:00"),
    WorkingDay("Суббота", "12:00", "00:00"),
    WorkingDay("Воскресенье", "12:00", "00:00"),
  ];

  int get _currentDay{
    int _currentDay = 0;

    for(var day in workingList){
      if(day.isCurrentDay){
        _currentDay = day.numberOfDay(day.dayOfWeek);
        debugPrint(_currentDay.toString());
      }
    }

    return _currentDay;
  }

  bool get _isOpen {
    int startWorkingDay = workingList[_currentDay - 1]._startingHour;
    int endWorkingDay =
        workingList[_currentDay - 1]._endingHour == 0
            ? 24
            : workingList[_currentDay - 1]._endingHour;

    int currentHour = now.hour == 0 ? 24 : now.hour;
    int currentMinute = now.minute;
    int currentSecond = now.second;

    if(startWorkingDay < endWorkingDay){
      if(currentHour >= startWorkingDay && currentHour <= endWorkingDay){
        if(currentHour == endWorkingDay && (currentMinute > 0 || currentSecond > 0)){
          return false;
        }
        else
          return true;
      }
    }
    else if (startWorkingDay > endWorkingDay){

    }
    else return false;
  }

  @override
  void initState() {
    debugPrint("hours"+now.hour.toString());
    debugPrint("isopen"+_isOpen.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 25),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: ListTile(
                  leading: Icon(
                    Icons.schedule,
                    size: 25.0,
                    color: Colors.black.withOpacity(0.38),),
                  title: Text("График работы", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.54)),),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: _isOpen
                    ? Text("Открыто", style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500,),)
                    : Text("Закрыто", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500,),),
              )
            ],
          ),
          Column(
            children: workingList,
          )
        ],
      ),
    );
  }

}

class WorkingDay extends StatelessWidget{
  String dayOfWeek;
  String startingTime;
  String endingTime;
  bool isCurrentDay = false;

  DateTime now = DateTime.now();

  int numberOfDay(String name){
    int number;
    switch(name){
      case "Понедельник": number = 1; break;
      case "Вторник" : number = 2; break;
      case "Среда" : number = 3; break;
      case "Четверг" : number = 4; break;
      case "Пятница" : number = 5; break;
      case "Суббота" : number = 6; break;
      case "Воскресенье" : number = 7; break;
      default: number = 0;
    }

    return number;
  }

  int get _startingHour => int.parse(startingTime.split(":")[0]);

  int get _endingHour => int.parse(endingTime.split(":")[0]);


  WorkingDay(this.dayOfWeek, this.startingTime, this.endingTime){
    isCurrentDay = now.weekday == numberOfDay(dayOfWeek);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 72, right: 16, top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(dayOfWeek, style: TextStyle(fontWeight:  isCurrentDay? FontWeight.bold : FontWeight.w300),),
          Text(startingTime+" – "+endingTime, style: TextStyle(fontWeight: isCurrentDay ? FontWeight.bold : FontWeight.w300),),
        ],
      ),
    );
  }
}