import 'dart:convert';

class FilmModel {
    FilmModel({
        required this.id,
        required this.name,
        required this.description,
        required this.pictureId,
        required this.durasi,
        required this.rating,
        required this.harga,
        required this.pemeran,
        required this.rilis,
        required this.sutradara,
        required this.perusahaan,
    });

    String id;
    String name;
    String description;
    String pictureId;
    String durasi;
    String rating;
    String harga;
    String pemeran;
    String rilis;
    String sutradara;
    String perusahaan;

    factory FilmModel.fromJson(Map<String, dynamic> json) => FilmModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        pictureId: json["pictureId"],
        durasi: json["Durasi"],
        rating: json["rating"],
        harga: json["harga"],
        pemeran: json["pemeran"],
        rilis: json["rilis"],
        sutradara: json["sutradara"],
        perusahaan: json["perusahaan"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "pictureId": pictureId,
        "Durasi": durasi,
        "rating": rating,
        "harga": harga,
        "pemeran": pemeran,
        "rilis": rilis,
        "sutradara": sutradara,
        "perusahaan": perusahaan,
    };
}
  List<FilmModel> parse(String? json) {
    if(json == null){
      return [];
    }
    final List parsed = jsonDecode(json)['film'];
    return parsed.map((data) => FilmModel.fromJson(data)).toList();
  }
