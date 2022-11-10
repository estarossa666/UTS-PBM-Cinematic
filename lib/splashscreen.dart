import 'package:flutter/material.dart';
import 'package:project_baru/awal.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 100,left: 60),
            child: const CircleAvatar(radius: 150,
              backgroundImage: AssetImage('assets/img/logo1.png'),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: 316,
            height: 50,
            padding: const EdgeInsets.only(left:75),
            child: ElevatedButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => const AwalPage(),));} ,
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(54, 41, 78, 1))
            ), 
            child:
              const Text(
                'Mulai',
                style: TextStyle(fontFamily: ('Poppins'),fontSize: 16,fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}