import 'package:flutter/material.dart';
import 'package:project_baru/film_model.dart';
import 'package:project_baru/pembayaran.dart';

class DetailPage extends StatelessWidget {
  final FilmModel filmModel;
  const DetailPage({super.key, required this.filmModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(filmModel.pictureId),
            SizedBox(
              height: 24,
            ),
            Text(
              filmModel.name,
              style: TextStyle(fontFamily: ('Poppins'), fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              filmModel.durasi,
              style: TextStyle(fontFamily: ('Poppins'), fontSize: 14, fontWeight: FontWeight.bold,color: Colors.white),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              filmModel.harga,
              style: TextStyle(fontFamily: ('Poppins'), fontSize: 18, fontWeight: FontWeight.bold,color: Color.fromRGBO(255, 163, 0, 1)),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
            width: 316,
            height: 50,
            child: ElevatedButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => PembayaranPage(),));} ,
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(54, 41, 78, 1))
            ), 
            child:
              const Text(
                'Beli Tiket',
                style: TextStyle(fontFamily: ('Poppins'),fontSize: 16,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
              height: 8,
            ),
            Text(
              filmModel.description,
              style: TextStyle(fontFamily: ('Poppins'), fontSize: 12, fontWeight: FontWeight.w600,color: Colors.white),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Pemeran',
              style: TextStyle(fontFamily: ('Poppins'), fontSize: 16, fontWeight: FontWeight.bold,color: Color.fromRGBO(174, 163, 192, 1)),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              filmModel.pemeran,
              style: TextStyle(fontFamily: ('Poppins'), fontSize: 13, fontWeight: FontWeight.w600,color: Colors.white)
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Rilis',
              style: TextStyle(fontFamily: ('Poppins'), fontSize: 16, fontWeight: FontWeight.bold,color: Color.fromRGBO(174, 163, 192, 1)),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              filmModel.rilis,
              style: TextStyle(fontFamily: ('Poppins'), fontSize: 12, fontWeight: FontWeight.w600,color: Colors.white)
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Sutradara',
              style: TextStyle(fontFamily: ('Poppins'), fontSize: 16, fontWeight: FontWeight.bold,color: Color.fromRGBO(174, 163, 192, 1)),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              filmModel.sutradara,
              style: TextStyle(fontFamily: ('Poppins'), fontSize: 12, fontWeight: FontWeight.w600,color: Colors.white)
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Perusahaan Produksi',
              style: TextStyle(fontFamily: ('Poppins'), fontSize: 16, fontWeight: FontWeight.bold,color: Color.fromRGBO(174, 163, 192, 1)),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              filmModel.perusahaan,
              style: TextStyle(fontFamily: ('Poppins'), fontSize: 12, fontWeight: FontWeight.w600,color: Colors.white)
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Rating',
              style: TextStyle(fontFamily: ('Poppins'), fontSize: 16, fontWeight: FontWeight.bold,color: Color.fromRGBO(174, 163, 192, 1)),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              filmModel.rating,
              style: TextStyle(fontFamily: ('Poppins'), fontSize: 12, fontWeight: FontWeight.w600,color: Colors.white)
            ),
          ],
        ),
      )
    );
  }
}