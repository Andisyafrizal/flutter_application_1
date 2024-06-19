// To parse this JSON data, do
//
//     final profileperusahaanModel = profileperusahaanModelFromJson(jsonString);

import 'dart:convert';

ProfileperusahaanModel profileperusahaanModelFromJson(String str) => ProfileperusahaanModel.fromJson(json.decode(str));

String profileperusahaanModelToJson(ProfileperusahaanModel data) => json.encode(data.toJson());

class ProfileperusahaanModel {
    bool? success;
    List<Datum>? data;
    String? message;

    ProfileperusahaanModel({
        this.success,
        this.data,
        this.message,
    });

    factory ProfileperusahaanModel.fromJson(Map<String, dynamic> json) => ProfileperusahaanModel(
        success: json["success"],
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
    };
}

class Datum {
    int? id;
    String? namaPerusahaan;
    String? deskripsi;
    String? latitude;
    String? longitude;
    String? jamMasuk;
    String? jamPulang;
    dynamic image;
    DateTime? createdAt;
    DateTime? updatedAt;

    Datum({
        this.id,
        this.namaPerusahaan,
        this.deskripsi,
        this.latitude,
        this.longitude,
        this.jamMasuk,
        this.jamPulang,
        this.image,
        this.createdAt,
        this.updatedAt,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        namaPerusahaan: json["nama_perusahaan"],
        deskripsi: json["deskripsi"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        jamMasuk: json["jam_masuk"],
        jamPulang: json["jam_pulang"],
        image: json["image"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nama_perusahaan": namaPerusahaan,
        "deskripsi": deskripsi,
        "latitude": latitude,
        "longitude": longitude,
        "jam_masuk": jamMasuk,
        "jam_pulang": jamPulang,
        "image": image,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}
