import 'package:flutter/material.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/quran/components/sura.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/quran/components/suras_list.dart';
import '../../../../../core/resources/colors_manager.dart';
import '../../../../../core/resources/asset_manager.dart';
import 'models/sura.dart';

class Quran extends StatefulWidget {
  const Quran({super.key});

  @override
  State<Quran> createState() => _QuranState();
}

class _QuranState extends State<Quran> {
  List<SuraModel> sura=[
    SuraModel(arSuraName: "الأنبياء", enSuraName: "Al-Anbiya", numberOfVerses: 112, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الأنبياء", enSuraName: "Al-Anbiya", numberOfVerses: 112, image: AssetManager.quranSura),
  ];
  List<SuraModel> surasList = [
    SuraModel(arSuraName: "الفاتحه", enSuraName: "Al-Fatiha", numberOfVerses: 7, image: AssetManager.quranSura),
    SuraModel(arSuraName: "البقرة", enSuraName: "Al-Baqarah", numberOfVerses: 286, image: AssetManager.quranSura),
    SuraModel(arSuraName: "آل عمران", enSuraName: "Aal-E-Imran", numberOfVerses: 200, image: AssetManager.quranSura),
    SuraModel(arSuraName: "النساء", enSuraName: "An-Nisa'", numberOfVerses: 176, image: AssetManager.quranSura),
    SuraModel(arSuraName: "المائدة", enSuraName: "Al-Ma'idah", numberOfVerses: 120, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الأنعام", enSuraName: "Al-An'am", numberOfVerses: 165, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الأعراف", enSuraName: "Al-A'raf", numberOfVerses: 206, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الأنفال", enSuraName: "Al-Anfal", numberOfVerses: 75, image: AssetManager.quranSura),
    SuraModel(arSuraName: "التوبة", enSuraName: "At-Tawbah", numberOfVerses: 129, image: AssetManager.quranSura),
    SuraModel(arSuraName: "يونس", enSuraName: "Yunus", numberOfVerses: 109, image: AssetManager.quranSura),
    SuraModel(arSuraName: "هود", enSuraName: "Hud", numberOfVerses: 123, image: AssetManager.quranSura),
    SuraModel(arSuraName: "يوسف", enSuraName: "Yusuf", numberOfVerses: 111, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الرعد", enSuraName: "Ar-Ra'd", numberOfVerses: 43, image: AssetManager.quranSura),
    SuraModel(arSuraName: "إبراهيم", enSuraName: "Ibrahim", numberOfVerses: 52, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الحجر", enSuraName: "Al-Hijr", numberOfVerses: 99, image: AssetManager.quranSura),
    SuraModel(arSuraName: "النحل", enSuraName: "An-Nahl", numberOfVerses: 128, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الإسراء", enSuraName: "Al-Isra", numberOfVerses: 111, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الكهف", enSuraName: "Al-Kahf", numberOfVerses: 110, image: AssetManager.quranSura),
    SuraModel(arSuraName: "مريم", enSuraName: "Maryam", numberOfVerses: 98, image: AssetManager.quranSura),
    SuraModel(arSuraName: "طه", enSuraName: "Ta-Ha", numberOfVerses: 135, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الأنبياء", enSuraName: "Al-Anbiya", numberOfVerses: 112, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الحج", enSuraName: "Al-Hajj", numberOfVerses: 78, image: AssetManager.quranSura),
    SuraModel(arSuraName: "المؤمنون", enSuraName: "Al-Mu'minun", numberOfVerses: 118, image: AssetManager.quranSura),
    SuraModel(arSuraName: "النّور", enSuraName: "An-Nur", numberOfVerses: 64, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الفرقان", enSuraName: "Al-Furqan", numberOfVerses: 77, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الشعراء", enSuraName: "Ash-Shu'ara", numberOfVerses: 227, image: AssetManager.quranSura),
    SuraModel(arSuraName: "النّمل", enSuraName: "An-Naml", numberOfVerses: 93, image: AssetManager.quranSura),
    SuraModel(arSuraName: "القصص", enSuraName: "Al-Qasas", numberOfVerses: 88, image: AssetManager.quranSura),
    SuraModel(arSuraName: "العنكبوت", enSuraName: "Al-Ankabut", numberOfVerses: 69, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الرّوم", enSuraName: "Ar-Rum", numberOfVerses: 60, image: AssetManager.quranSura),
    SuraModel(arSuraName: "لقمان", enSuraName: "Luqman", numberOfVerses: 34, image: AssetManager.quranSura),
    SuraModel(arSuraName: "السجدة", enSuraName: "As-Sajda", numberOfVerses: 30, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الأحزاب", enSuraName: "Al-Ahzab", numberOfVerses: 73, image: AssetManager.quranSura),
    SuraModel(arSuraName: "سبأ", enSuraName: "Saba", numberOfVerses: 54, image: AssetManager.quranSura),
    SuraModel(arSuraName: "فاطر", enSuraName: "Fatir", numberOfVerses: 45, image: AssetManager.quranSura),
    SuraModel(arSuraName: "يس", enSuraName: "Ya-Sin", numberOfVerses: 83, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الصافات", enSuraName: "As-Saffat", numberOfVerses: 182, image: AssetManager.quranSura),
    SuraModel(arSuraName: "ص", enSuraName: "Sad", numberOfVerses: 88, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الزمر", enSuraName: "Az-Zumar", numberOfVerses: 75, image: AssetManager.quranSura),
    SuraModel(arSuraName: "غافر", enSuraName: "Ghafir", numberOfVerses: 85, image: AssetManager.quranSura),
    SuraModel(arSuraName: "فصّلت", enSuraName: "Fussilat", numberOfVerses: 54, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الشورى", enSuraName: "Ash-Shura", numberOfVerses: 53, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الزخرف", enSuraName: "Az-Zukhruf", numberOfVerses: 89, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الدّخان", enSuraName: "Ad-Dukhan", numberOfVerses: 59, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الجاثية", enSuraName: "Al-Jathiya", numberOfVerses: 37, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الأحقاف", enSuraName: "Al-Ahqaf", numberOfVerses: 35, image: AssetManager.quranSura),
    SuraModel(arSuraName: "محمد", enSuraName: "Muhammad", numberOfVerses: 38, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الفتح", enSuraName: "Al-Fath", numberOfVerses: 29, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الحجرات", enSuraName: "Al-Hujurat", numberOfVerses: 18, image: AssetManager.quranSura),
    SuraModel(arSuraName: "ق", enSuraName: "Qaf", numberOfVerses: 45, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الذاريات", enSuraName: "Adh-Dhariyat", numberOfVerses: 60, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الطور", enSuraName: "At-Tur", numberOfVerses: 49, image: AssetManager.quranSura),
    SuraModel(arSuraName: "النجم", enSuraName: "An-Najm", numberOfVerses: 62, image: AssetManager.quranSura),
    SuraModel(arSuraName: "القمر", enSuraName: "Al-Qamar", numberOfVerses: 55, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الرحمن", enSuraName: "Ar-Rahman", numberOfVerses: 78, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الواقعة", enSuraName: "Al-Waqi'a", numberOfVerses: 96, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الحديد", enSuraName: "Al-Hadid", numberOfVerses: 29, image: AssetManager.quranSura),
    SuraModel(arSuraName: "المجادلة", enSuraName: "Al-Mujadila", numberOfVerses: 22, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الحشر", enSuraName: "Al-Hashr", numberOfVerses: 24, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الممتحنة", enSuraName: "Al-Mumtahina", numberOfVerses: 13, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الصف", enSuraName: "As-Saff", numberOfVerses: 14, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الجمعة", enSuraName: "Al-Jumu'a", numberOfVerses: 11, image: AssetManager.quranSura),
    SuraModel(arSuraName: "المنافقون", enSuraName: "Al-Munafiqun", numberOfVerses: 11, image: AssetManager.quranSura),
    SuraModel(arSuraName: "التغابن", enSuraName: "At-Taghabun", numberOfVerses: 18, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الطلاق", enSuraName: "At-Talaq", numberOfVerses: 12, image: AssetManager.quranSura),
    SuraModel(arSuraName: "التحريم", enSuraName: "At-Tahrim", numberOfVerses: 12, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الملك", enSuraName: "Al-Mulk", numberOfVerses: 30, image: AssetManager.quranSura),
    SuraModel(arSuraName: "القلم", enSuraName: "Al-Qalam", numberOfVerses: 52, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الحاقة", enSuraName: "Al-Haqqah", numberOfVerses: 52, image: AssetManager.quranSura),
    SuraModel(arSuraName: "المعارج", enSuraName: "Al-Ma'arij", numberOfVerses: 44, image: AssetManager.quranSura),
    SuraModel(arSuraName: "نوح", enSuraName: "Nuh", numberOfVerses: 28, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الجن", enSuraName: "Al-Jinn", numberOfVerses: 28, image: AssetManager.quranSura),
    SuraModel(arSuraName: "المزّمّل", enSuraName: "Al-Muzzammil", numberOfVerses: 20, image: AssetManager.quranSura),
    SuraModel(arSuraName: "المدّثر", enSuraName: "Al-Muddathir", numberOfVerses: 56, image: AssetManager.quranSura),
    SuraModel(arSuraName: "القيامة", enSuraName: "Al-Qiyamah", numberOfVerses: 40, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الإنسان", enSuraName: "Al-Insan", numberOfVerses: 31, image: AssetManager.quranSura),
    SuraModel(arSuraName: "المرسلات", enSuraName: "Al-Mursalat", numberOfVerses: 50, image: AssetManager.quranSura),
    SuraModel(arSuraName: "النبأ", enSuraName: "An-Naba'", numberOfVerses: 40, image: AssetManager.quranSura),
    SuraModel(arSuraName: "النازعات", enSuraName: "An-Nazi'at", numberOfVerses: 46, image: AssetManager.quranSura),
    SuraModel(arSuraName: "عبس", enSuraName: "Abasa", numberOfVerses: 42, image: AssetManager.quranSura),
    SuraModel(arSuraName: "التكوير", enSuraName: "At-Takwir", numberOfVerses: 29, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الإنفطار", enSuraName: "Al-Infitar", numberOfVerses: 19, image: AssetManager.quranSura),
    SuraModel(arSuraName: "المطفّفين", enSuraName: "Al-Mutaffifin", numberOfVerses: 36, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الإنشقاق", enSuraName: "Al-Inshiqaq", numberOfVerses: 25, image: AssetManager.quranSura),
    SuraModel(arSuraName: "البروج", enSuraName: "Al-Buruj", numberOfVerses: 22, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الطارق", enSuraName: "At-Tariq", numberOfVerses: 17, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الأعلى", enSuraName: "Al-A'la", numberOfVerses: 19, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الغاشية", enSuraName: "Al-Ghashiyah", numberOfVerses: 26, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الفجر", enSuraName: "Al-Fajr", numberOfVerses: 30, image: AssetManager.quranSura),
    SuraModel(arSuraName: "البلد", enSuraName: "Al-Balad", numberOfVerses: 20, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الشمس", enSuraName: "Ash-Shams", numberOfVerses: 15, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الليل", enSuraName: "Al-Lail", numberOfVerses: 21, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الضحى", enSuraName: "Ad-Duha", numberOfVerses: 11, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الشرح", enSuraName: "Ash-Sharh", numberOfVerses: 8, image: AssetManager.quranSura),
    SuraModel(arSuraName: "التين", enSuraName: "At-Tin", numberOfVerses: 8, image: AssetManager.quranSura),
    SuraModel(arSuraName: "العلق", enSuraName: "Al-Alaq", numberOfVerses: 19, image: AssetManager.quranSura),
    SuraModel(arSuraName: "القدر", enSuraName: "Al-Qadr", numberOfVerses: 5, image: AssetManager.quranSura),
    SuraModel(arSuraName: "البينة", enSuraName: "Al-Bayyina", numberOfVerses: 8, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الزلزلة", enSuraName: "Az-Zalzalah", numberOfVerses: 8, image: AssetManager.quranSura),
    SuraModel(arSuraName: "العاديات", enSuraName: "Al-Adiyat", numberOfVerses: 11, image: AssetManager.quranSura),
    SuraModel(arSuraName: "القارعة", enSuraName: "Al-Qari'a", numberOfVerses: 11, image: AssetManager.quranSura),
    SuraModel(arSuraName: "التكاثر", enSuraName: "At-Takathur", numberOfVerses: 8, image: AssetManager.quranSura),
    SuraModel(arSuraName: "العصر", enSuraName: "Al-Asr", numberOfVerses: 3, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الهمزة", enSuraName: "Al-Humazah", numberOfVerses: 9, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الفيل", enSuraName: "Al-Fil", numberOfVerses: 5, image: AssetManager.quranSura),
    SuraModel(arSuraName: "قريش", enSuraName: "Quraysh", numberOfVerses: 4, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الماعون", enSuraName: "Al-Ma'un", numberOfVerses: 7, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الكوثر", enSuraName: "Al-Kawthar", numberOfVerses: 3, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الكافرون", enSuraName: "Al-Kafirun", numberOfVerses: 6, image: AssetManager.quranSura),
    SuraModel(arSuraName: "النصر", enSuraName: "An-Nasr", numberOfVerses: 3, image: AssetManager.quranSura),
    SuraModel(arSuraName: "المسد", enSuraName: "Al-Masad", numberOfVerses: 5, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الإخلاص", enSuraName: "Al-Ikhlas", numberOfVerses: 4, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الفلق", enSuraName: "Al-Falaq", numberOfVerses: 5, image: AssetManager.quranSura),
    SuraModel(arSuraName: "الناس", enSuraName: "An-Nas", numberOfVerses: 6, image: AssetManager.quranSura),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AssetManager.quranBG), fit: BoxFit.cover),
        gradient: LinearGradient(colors: [
          ColorsManager.black,
          ColorsManager.blackWithObacity70,
        ]),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                ),
                child: SizedBox(
                  width: 291,
                  height: 171,
                  child: Image.asset(AssetManager.isalmiLogo),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              buildSearchField(),
              SizedBox(
                height: 20,
              ),
              Text(
                " Most Recently",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: ColorsManager.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 170,
                child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: sura.length,itemBuilder: (context,index){
                  return SuraComponent(sura:sura[index] );
                }),
              ),
              SizedBox(height:20,),
              /*
              // هنا أنا هستخدم ال for loop , لأني انا محتاج حاجه
              not Scrollable
              وف نفس الوقت تكون بتبنيلي العناصر كلها مرة واحدة
              */

              for(int i=0;i<surasList.length;i++)
                  SurasList(sura: surasList[i],indexOfSura: i,),
              // Expanded(
              //   child: ListView.builder(
              //     physics: NeverScrollableScrollPhysics(),
              //       shrinkWrap: true,
              //       itemCount:sura.length,itemBuilder: (context,index){
              //     return SurasList(sura: sura[index],);
              //   }),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSearchField() {
    return TextFormField(
      cursorColor: ColorsManager.gold,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20,
        color: ColorsManager.white,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorsManager.blackWithObacity70,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: ColorsManager.gold,
              width: 1.0,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: ColorsManager.gold,
              width: 1.0,
            )),
        label: Text(
          "   Sura Name",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: ColorsManager.white,
          ),
        ),
      ),
    );
  }


}
