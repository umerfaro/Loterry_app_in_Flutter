import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const LotteryApp());
}

class LotteryApp extends StatefulWidget {
  const LotteryApp({Key? key}) : super(key: key);

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  Random random2 = Random();
  Random random = Random();
  int y = 1;
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
              child: Text(
            'LotteryApp',
            style: TextStyle(color: Colors.white),
          )),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: x == y
                    ? Text(
                        'Lottery winning number is $y',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )
                    : Text('Lottery winning number is $y'),
              ),
              //Text(x>5 ?'x is Greater than 5 ':  x.toString())
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 250,
                  // width: 250,

                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(50),
                  ),

                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: x == y
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.done,
                                color: Colors.green,
                                size: 35,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Congratulation bro You have won the Lottery, your number is $x,\n\n collect your money From www.MoneyCum.com',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.error,
                                color: Colors.red,
                                size: 35,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Better luck next time your number is $x\n try again',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            setState(() {
              //print(random.nextInt(50).toString());
              x = random.nextInt(20);
              y = random2.nextInt(20);
              //print(random2.nextInt(50).toString());
            });
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}

//all widget accept ternary opperator

// class LotteryApp extends StatefulWidget {
//   const LotteryApp({Key? key}) : super(key: key);
//
//   @override
//   State<LotteryApp> createState() => _LotteryAppState();
// }
//
// class _LotteryAppState extends State<LotteryApp> {
//   int x = 0; // final value can't change
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//
//       home: Scaffold(
//
//         appBar: AppBar(
//           title: const Text("LoterryApp"),
//         ),
//         backgroundColor: Colors.red.shade500,
//         body: SafeArea(
//           child: Center(
//               child: Text(
//                 x.toString(),
//                 style: const TextStyle(fontSize: 50),
//               )),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//
//             x++;
//             setState(() {//this refresh the code with tha start of material app
//
//             });
//             //print('tap');
//             print(x.toString());
//           },
//           child: const Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }
