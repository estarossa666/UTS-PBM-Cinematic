import 'package:flutter/material.dart';
import 'package:project_baru/verifikasi.dart';

class PembayaranPage extends StatelessWidget {
  const PembayaranPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text('Metode Pembayaran',
          style: TextStyle(fontFamily: ('Poppins'), fontSize: 18, fontWeight: FontWeight.bold,color: Color.fromRGBO(164, 24, 107, 1))
          ),
          SizedBox(
            height: 20,
          ),
         Center(
           child: Container(
              width: 316,
              height: 50,
              child: ElevatedButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => VerifikasiPage(),));} ,
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(54, 41, 78, 1))
              ), 
              child:
                const Text(
                  'Dana',
                  style: TextStyle(fontFamily: ('Poppins'),fontSize: 16,fontWeight: FontWeight.bold),
                ),
              ),
            ),
         ),
         SizedBox(
            height: 20,
          ),
         Container(
            width: 316,
            height: 50,
            child: ElevatedButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => VerifikasiPage(),));} ,
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(54, 41, 78, 1))
            ), 
            child:
              const Text(
                'GoPay',
                style: TextStyle(fontFamily: ('Poppins'),fontSize: 16,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 316,
            height: 50,
            child: ElevatedButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => VerifikasiPage(),));} ,
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(54, 41, 78, 1))
            ), 
            child:
              const Text(
                'ShopeePay',
                style: TextStyle(fontFamily: ('Poppins'),fontSize: 16,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 316,
            height: 50,
            child: ElevatedButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => VerifikasiPage(),));} ,
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(54, 41, 78, 1))
            ), 
            child:
              const Text(
                'Bank',
                style: TextStyle(fontFamily: ('Poppins'),fontSize: 16,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 316,
            height: 50,
            child: ElevatedButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => VerifikasiPage(),));} ,
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(54, 41, 78, 1))
            ), 
            child:
              const Text(
                'Alfamart',
                style: TextStyle(fontFamily: ('Poppins'),fontSize: 16,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 316,
            height: 50,
            child: ElevatedButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => VerifikasiPage(),));} ,
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(54, 41, 78, 1))
            ), 
            child:
              const Text(
                'Indomart',
                style: TextStyle(fontFamily: ('Poppins'),fontSize: 16,fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}