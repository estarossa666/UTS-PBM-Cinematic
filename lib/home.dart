import 'package:flutter/material.dart';
import 'package:project_baru/detail.dart';
import 'package:project_baru/film_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halo,Andriani Nurian"),
      titleTextStyle:TextStyle(
        color: Colors.white,
        fontFamily:('Poppins'),
        fontSize: 15,
        fontWeight: FontWeight.bold
        ),
        backgroundColor: const Color.fromRGBO(19, 10, 43, 1),
        elevation: 0,
        leading: Icon(Icons.account_circle_outlined),
       actions:<Widget> [
        IconButton(icon:const Icon(Icons.notifications_active),
        onPressed: (){},
        color:Colors.white,
        ),
       ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
               Container(
            padding: EdgeInsets.only(left: 12),
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
              borderRadius: BorderRadius.circular(16)),
              child: Row(children: [
                Icon(Icons.search, size: 28, color: Colors.black54),
                SizedBox(width: 12),
                Text('Search for Film',
                style: TextStyle(color: Colors.black54))
                ]
              )
            ),
            SizedBox(
              height: 20,
            ),
            
            FutureBuilder<String>(
            future: DefaultAssetBundle.of(context).loadString('assets/nonton.json'),
            builder:(context, snapshot) {
              List<FilmModel> films = parse (snapshot.data);
              return ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: films.length,
                itemBuilder:(context, index) {
                  return InkWell(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context) => DetailPage(filmModel: films[index]),));},
                    child: Container(
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                          width: 1.0,
                          color: Colors.white),
                          borderRadius:
                            BorderRadius.circular(20),
                        ),
                        leading: Image.asset(
                          films[index].pictureId,
                          width: 150,
                          height: 150,
                        ),
                        title: Text(
                          films[index].name,
                           style: TextStyle(fontFamily: ('Poppins'), fontSize: 14, fontWeight: FontWeight.bold,color: Colors.white)
                        ),
                        contentPadding: EdgeInsets.all(10.0),
                       ),
                      ),
                    );
                 },
                );
              },
             ),
            ],
          )
        ),
      ),
    );
  }
}
