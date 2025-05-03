class SuraModel {
  String enSuraName, arSuraName;
  String? image;
  int numberOfVerses,indexOfSura;
  SuraModel({
    required this.arSuraName,
    required this.enSuraName,
    required this.numberOfVerses,
    required this.indexOfSura,
    this.image,
  });
}
