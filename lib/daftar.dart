import 'package:flutter/material.dart';
import 'package:project_baru/login.dart';

class DaftarPage extends StatelessWidget {
  const DaftarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Center(
            child: Container(
              padding: EdgeInsets.only(left: 50),
              height: 300,
              width: 330,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/halaman_daftar.png')
                )
              )
            ),
          ),
          const Text(
            'DAFTAR',
            style: TextStyle(fontFamily: ('Poppins'),fontSize: 35,fontWeight: FontWeight.bold,color: Color.fromRGBO(164, 24, 107, 1)),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            width: 315,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16)
            ),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            width: 315,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16)
            ),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            width: 315,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16)
            ),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            width: 315,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16)
            ),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Konfirmasi Password',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 216,
            height: 50,
            child: ElevatedButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => const LoginPage(),));} ,
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(54, 41, 78, 1))
            ), 
            child:
              const Text(
                'Daftar',
                style: TextStyle(fontFamily: ('Poppins'),fontSize: 16,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Sudah Punya Akun?',
              style: TextStyle(fontFamily: ('Poppins'), fontSize: 12, fontWeight: FontWeight.w600,color: Colors.white),
              ),
              ElevatedButton(
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => const LoginPage(),));},
                      style: ButtonStyle(
                        backgroundColor: 
                          MaterialStatePropertyAll(
                            Color.fromRGBO(164, 24, 107, 1)
                            )
                          ), 
                    child: const Text(
                      'Masuk',
                      style: TextStyle(fontFamily: ('Poppins'), fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                  )
            ],
          )
        ]
        )
      )
    );
  }
}