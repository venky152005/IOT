import 'dart:async';

import 'package:flutter/material.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key});

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  Timer? _timer;
  int _start = 10;
  bool _isRunning = false;
  int _totalTime = 10;

  void startTimer() {
    if (_isRunning) return;
    _isRunning = true;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start > 0) {
        setState(() {
          _start--;
        });
      } else {
        _timer?.cancel();
        _isRunning = false;
      }
    });
  }

  void pauseTime() {
    if (_timer != null) {
      _timer?.cancel();
      _isRunning = false;
    }
  }

  void increaseTime() {
    setState(() {
      _start += 60;
      _totalTime += 60;
    });
  }

  void decreaseTime() {
    if (_start > 0) {
      setState(() {
        _start -= 60;
        _totalTime -= 60;
      });
    }
  }

  void stopTime() {
    if (_start > 0) {
      setState(() {
        _start = 0;
      });
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int minutes = _start ~/ 60;
    int seconds = _start % 60;

    String formattedTime =
        "${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}";
    double progress = (_start / _totalTime).clamp(0.0, 1.0);

    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: const Color(0xFFD9FE74),
                    ),
                  ),
                  child: TextButton(
                    onPressed: increaseTime,
                    child: const Text(
                      'Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: const Color(0xFFD9FE74),
                    ),
                  ),
                  child: TextButton(
                    onPressed: decreaseTime,
                    child: const Text(
                      'Down',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              formattedTime,
              style: const TextStyle(
                  fontSize: 80,
                  color: Color(0xFFD9FE74),
                  fontWeight: FontWeight.w400,
                  fontFamily: 'ClashDisplay'),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Stack(
                children: [
                  Center(
                    child: SizedBox(
                      height: 80,
                      width: 80,
                      child: CircularProgressIndicator(
                        value: progress,
                        strokeWidth: 5,
                        backgroundColor: const Color(0xFFB9B8B8),
                        valueColor: const AlwaysStoppedAnimation(
                          Color(0xFFD9FE74),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: IconButton(
                      onPressed: startTimer,
                      icon: Icon(
                        _isRunning
                            ? Icons.play_circle_fill_rounded
                            : Icons.stop_circle_rounded,
                        size: 100,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
