import 'package:flutter/material.dart';
import 'package:project_baru/home.dart';
import 'package:project_baru/login.dart';

class VerifikasiPage extends StatelessWidget {
  const VerifikasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Center(child: Image.asset('assets/img/pembayaran.png')),
          Text('9 November 2022, 19.25',
          style: TextStyle(fontFamily: ('Poppins'), fontSize: 20, fontWeight: FontWeight.w600,color: Colors.white),
          ),
          Text('Rp.20.000',
          style: TextStyle(fontFamily: ('Poppins'), fontSize: 40, fontWeight: FontWeight.bold,color: Colors.white),
          ),
          SizedBox(
              height: 30,
            ),
          Container(
              width: 316,
              height: 50,
              child: ElevatedButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage(),));} ,
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(54, 41, 78, 1))
              ), 
              child:
                const Text(
                  'Kembali Ke HomePage',
                  style: TextStyle(fontFamily: ('Poppins'),fontSize: 16,fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 156,
              height: 50,
              child: ElevatedButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => LoginPage(),));} ,
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(54, 41, 78, 1))
              ), 
              child:
                const Text(
                  'Log Out',
                  style: TextStyle(fontFamily: ('Poppins'),fontSize: 16,fontWeight: FontWeight.bold),
                ),
              ),
            ),
        ],
      )
    );
  }
}