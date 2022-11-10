import 'package:flutter/material.dart';
import 'package:project_baru/daftar.dart';
import 'package:project_baru/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Center(
            child: Container(
              height: 320,
              width: 350,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/halaman_masuk.png')
                )
              )
            ),
          ),
          const Text(
            'MASUK',
            style: TextStyle(fontFamily: ('Poppins'),fontSize: 35,fontWeight: FontWeight.bold,color: Color.fromRGBO(164, 24, 107, 1)),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
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
            height: 50,
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
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Checkbox(
                value: isChecked,
                activeColor: Colors.purple, 
                tristate: true,
                onChanged: (newBool) {
                  setState(() {
                    isChecked = newBool;
                  });
                },
                ),
                const Text(
                  'Ingat Saya',
                  style: TextStyle(fontFamily: ('Poppins'),fontSize: 12,fontWeight: FontWeight.w600,color: Colors.white),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 90)),
                  ElevatedButton(
                    onPressed: (){},
                      style: const ButtonStyle(
                        elevation: MaterialStatePropertyAll(0),
                        backgroundColor: 
                          MaterialStatePropertyAll(
                            Color.fromRGBO(19, 10, 43, 1)
                            )
                          ), 
                    child: const Text(
                      'Lupa Password?',
                      style: TextStyle(fontFamily: ('Poppins'), fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                  )
              ],
            ),
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
                'Masuk',
                style: TextStyle(fontFamily: ('Poppins'),fontSize: 16,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Belum Punya Akun?',
              style: TextStyle(fontFamily: ('Poppins'), fontSize: 12, fontWeight: FontWeight.w600,color: Colors.white),
              ),
              ElevatedButton(
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => DaftarPage(),));},
                      style: ButtonStyle(
                        backgroundColor: 
                          MaterialStatePropertyAll(
                            Color.fromRGBO(164, 24, 107, 1)
                            )
                          ), 
                    child: const Text(
                      'Daftar',
                      style: TextStyle(fontFamily: ('Poppins'), fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                  )
            ],
          )
        ]
        ),
      ),
    );
  }
}