import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
void main() => runApp(MyApp3());

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoApp(),
      theme: ThemeData.dark(),
    );
  }
}

class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {

  CountDownController _controller = CountDownController();
  bool _isPause = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[700],
        title: Text('Kronometre'),
        centerTitle: true,
      ),
      body: Center(
        child: CircularCountDownTimer(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 2,
            duration: 1800,
            fillColor: Colors.amber,
            //color: Colors.white,
          controller: _controller,
          backgroundColor: Colors.brown[100],
          strokeWidth: 10.0,
          strokeCap: StrokeCap.round,
          isTimerTextShown: true,
          isReverse: false,
          onComplete: (){
              Alert(
                  context: context,
                  title: 'Bitti',
                style: AlertStyle(
                  isCloseButton: true,
                  isButtonVisible: false,
                  titleStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
                type: AlertType.success
              ).show();
          },
          textStyle: const TextStyle(fontSize: 50.0,color: Colors.black), ringColor: Colors.white,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            setState(() {
              if(_isPause){
                _isPause = false;
                _controller.resume();
              }else{
                _isPause = true;
                _controller.pause();
              }
            });
          },
          icon: Icon(_isPause ? Icons.play_arrow : Icons.pause),
          label: Text(_isPause ? 'Devam' : 'Durdur'),
      ),
    );
  }
}