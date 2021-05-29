import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';


class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SlideToUnlockPage(),
                    
    );
  }
}

class SlideToUnlockPage extends StatelessWidget {
  final List<String> days = <String>[
   'Sunday',
   'Monday',
   'Tuesday',
   'Wednesday',
   'Thursday',
   'Friday',
   'Saturday'
  ];
   final List<String> months = <String>[
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  @override
  Widget build(BuildContext context) {
    final DateTime time = DateTime.now();
    final int hour = time.hour;
    final int minute = time.minute;
     final int day = time.weekday;
      final int month = time.month;
       final int dayInMonth = time.day;
        
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [ //
          Image.network('https://i.pinimg.com/originals/6a/e0/07/6ae007a47af109ef3bb3ca7011a1c592.jpg?q=60',
          fit: BoxFit.cover,
          ),
          Positioned(
            top: 48.0,
            right: 0.0,
            left: 0.0,            
            child: Center(
child: Column(
  children: [
    Text(
      
      '${hour < 10? ' 0$hour' : '$hour '}:${minute < 10 ? ' 0$minute' : ' $minute'}',
      
      style: const TextStyle(
        fontSize: 55.0,
        color: Colors.white,
        fontWeight: FontWeight.w400
      ),
    ),
    Padding(padding: EdgeInsets.symmetric(vertical: 4.0),
    ),
    Text(
'${days[day ]}, ${months[month - 1]} $dayInMonth',
style: TextStyle(fontSize: 30.0, color: Colors.white),


    )
  ],
),
            ),
            ),
Positioned(
  bottom: 24.0,
  left: 0.0,
  right: 0.0,  
  child: Center(
    child: Opacity(
      opacity: 0.8,
      child: Shimmer.fromColors(child: Row( // shimmer
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network('https://i.pinimg.com/564x/36/ba/ce/36bace3a603f068bf6a9a235e85e6706.jpg',
          height: 20.0,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 4.0),
          ),
          Text("Slide to Unlock",
          style: TextStyle(fontSize: 30.0,color: Colors.white),
          ),
          
          
        ],
      ),
      baseColor: Colors.white,
      highlightColor: Colors.black, 
      loop: 10,
      ) ,
      ),
      
  ) )
        ],
      ),
      
      
    );
  }
}
