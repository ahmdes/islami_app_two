class SuraModel {
  String enSuraName, arSuraName;
  String? image;
  int numberOfVerses;
  SuraModel({
    required this.arSuraName,
    required this.enSuraName,
    required this.numberOfVerses,
    this.image,
  });
}
