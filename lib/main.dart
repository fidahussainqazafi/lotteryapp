import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lottery App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Center(child: Text('Lottery winning number is 5')),
          const SizedBox(height: 30,),
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: x== 5 ?Colors.deepOrange  :  Colors.indigo.withOpacity(.9)
                  
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),

              child: x == 5?
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.done_all,color: Colors.green,size: 30,),
                  const SizedBox(height: 20,),
                    Text('Condition Matched ! \n Congratulation You Win',textAlign:
                  TextAlign.center,)

                ],
              ) :





              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.error,color: Colors.red,size: 30,),
                  const SizedBox(height: 20,),
                  Text('Better Luck for Next Time Your Lattoty number is $x \n Try again',textAlign:
                    TextAlign.center,)

                ],
              ),
            ),
          )
          ],
        
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(random.nextInt(10).toString());
            x = random.nextInt(20);
            print(x);
            setState(() {

            });
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
