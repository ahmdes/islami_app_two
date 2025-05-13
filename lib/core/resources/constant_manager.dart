import 'dart:core';

import 'package:flutter/cupertino.dart';
import '../../presentation/screens/home/tabs/hadith/models/hadith.dart';
import '../../presentation/screens/home/tabs/quran/models/sura.dart';

class ConstantManager {
  static List<SuraModel> surasList = [
    SuraModel(
        arSuraName: "الفاتحة",
        enSuraName: "Al-Fatiha",
        numberOfVerses: 7,
        indexOfSura: 0),
    SuraModel(
        arSuraName: "البقرة",
        enSuraName: "Al-Baqarah",
        numberOfVerses: 286,
        indexOfSura: 1),
    SuraModel(
        arSuraName: "آل عمران",
        enSuraName: "Aal-E-Imran",
        numberOfVerses: 200,
        indexOfSura: 2),
    SuraModel(
        arSuraName: "النساء",
        enSuraName: "An-Nisa'",
        numberOfVerses: 176,
        indexOfSura: 3),
    SuraModel(
        arSuraName: "المائدة",
        enSuraName: "Al-Ma'idah",
        numberOfVerses: 120,
        indexOfSura: 4),
    SuraModel(
        arSuraName: "الأنعام",
        enSuraName: "Al-An'am",
        numberOfVerses: 165,
        indexOfSura: 5),
    SuraModel(
        arSuraName: "الأعراف",
        enSuraName: "Al-A'raf",
        numberOfVerses: 206,
        indexOfSura: 6),
    SuraModel(
        arSuraName: "الأنفال",
        enSuraName: "Al-Anfal",
        numberOfVerses: 75,
        indexOfSura: 7),
    SuraModel(
        arSuraName: "التوبة",
        enSuraName: "At-Tawbah",
        numberOfVerses: 129,
        indexOfSura: 8),
    SuraModel(
        arSuraName: "يونس",
        enSuraName: "Yunus",
        numberOfVerses: 109,
        indexOfSura: 9),
    SuraModel(
        arSuraName: "هود",
        enSuraName: "Hud",
        numberOfVerses: 123,
        indexOfSura: 10),
    SuraModel(
        arSuraName: "يوسف",
        enSuraName: "Yusuf",
        numberOfVerses: 111,
        indexOfSura: 11),
    SuraModel(
        arSuraName: "الرعد",
        enSuraName: "Ar-Ra'd",
        numberOfVerses: 43,
        indexOfSura: 12),
    SuraModel(
        arSuraName: "إبراهيم",
        enSuraName: "Ibrahim",
        numberOfVerses: 52,
        indexOfSura: 13),
    SuraModel(
        arSuraName: "الحجر",
        enSuraName: "Al-Hijr",
        numberOfVerses: 99,
        indexOfSura: 14),
    SuraModel(
        arSuraName: "النحل",
        enSuraName: "An-Nahl",
        numberOfVerses: 128,
        indexOfSura: 15),
    SuraModel(
        arSuraName: "الإسراء",
        enSuraName: "Al-Isra",
        numberOfVerses: 111,
        indexOfSura: 16),
    SuraModel(
        arSuraName: "الكهف",
        enSuraName: "Al-Kahf",
        numberOfVerses: 110,
        indexOfSura: 17),
    SuraModel(
        arSuraName: "مريم",
        enSuraName: "Maryam",
        numberOfVerses: 98,
        indexOfSura: 18),
    SuraModel(
        arSuraName: "طه",
        enSuraName: "Ta-Ha",
        numberOfVerses: 135,
        indexOfSura: 19),
    SuraModel(
        arSuraName: "الأنبياء",
        enSuraName: "Al-Anbiya",
        numberOfVerses: 112,
        indexOfSura: 20),
    SuraModel(
        arSuraName: "الحج",
        enSuraName: "Al-Hajj",
        numberOfVerses: 78,
        indexOfSura: 21),
    SuraModel(
        arSuraName: "المؤمنون",
        enSuraName: "Al-Mu'minun",
        numberOfVerses: 118,
        indexOfSura: 22),
    SuraModel(
        arSuraName: "النور",
        enSuraName: "An-Nur",
        numberOfVerses: 64,
        indexOfSura: 23),
    SuraModel(
        arSuraName: "الفرقان",
        enSuraName: "Al-Furqan",
        numberOfVerses: 77,
        indexOfSura: 24),
    SuraModel(
        arSuraName: "الشعراء",
        enSuraName: "Ash-Shu'ara",
        numberOfVerses: 227,
        indexOfSura: 25),
    SuraModel(
        arSuraName: "النمل",
        enSuraName: "An-Naml",
        numberOfVerses: 93,
        indexOfSura: 26),
    SuraModel(
        arSuraName: "القصص",
        enSuraName: "Al-Qasas",
        numberOfVerses: 88,
        indexOfSura: 27),
    SuraModel(
        arSuraName: "العنكبوت",
        enSuraName: "Al-Ankabut",
        numberOfVerses: 69,
        indexOfSura: 28),
    SuraModel(
        arSuraName: "الروم",
        enSuraName: "Ar-Rum",
        numberOfVerses: 60,
        indexOfSura: 29),
    SuraModel(
        arSuraName: "لقمان",
        enSuraName: "Luqman",
        numberOfVerses: 34,
        indexOfSura: 30),
    SuraModel(
        arSuraName: "السجدة",
        enSuraName: "As-Sajda",
        numberOfVerses: 30,
        indexOfSura: 31),
    SuraModel(
        arSuraName: "الأحزاب",
        enSuraName: "Al-Ahzab",
        numberOfVerses: 73,
        indexOfSura: 32),
    SuraModel(
        arSuraName: "سبأ",
        enSuraName: "Saba",
        numberOfVerses: 54,
        indexOfSura: 33),
    SuraModel(
        arSuraName: "فاطر",
        enSuraName: "Fatir",
        numberOfVerses: 45,
        indexOfSura: 34),
    SuraModel(
        arSuraName: "يس",
        enSuraName: "Ya-Sin",
        numberOfVerses: 83,
        indexOfSura: 35),
    SuraModel(
        arSuraName: "الصافات",
        enSuraName: "As-Saffat",
        numberOfVerses: 182,
        indexOfSura: 36),
    SuraModel(
        arSuraName: "ص",
        enSuraName: "Sad",
        numberOfVerses: 88,
        indexOfSura: 37),
    SuraModel(
        arSuraName: "الزمر",
        enSuraName: "Az-Zumar",
        numberOfVerses: 75,
        indexOfSura: 38),
    SuraModel(
        arSuraName: "غافر",
        enSuraName: "Ghafir",
        numberOfVerses: 85,
        indexOfSura: 39),
    SuraModel(
        arSuraName: "فصلت",
        enSuraName: "Fussilat",
        numberOfVerses: 54,
        indexOfSura: 40),
    SuraModel(
        arSuraName: "الشورى",
        enSuraName: "Ash-Shura",
        numberOfVerses: 53,
        indexOfSura: 41),
    SuraModel(
        arSuraName: "الزخرف",
        enSuraName: "Az-Zukhruf",
        numberOfVerses: 89,
        indexOfSura: 42),
    SuraModel(
        arSuraName: "الدخان",
        enSuraName: "Ad-Dukhan",
        numberOfVerses: 59,
        indexOfSura: 43),
    SuraModel(
        arSuraName: "الجاثية",
        enSuraName: "Al-Jathiya",
        numberOfVerses: 37,
        indexOfSura: 44),
    SuraModel(
        arSuraName: "الأحقاف",
        enSuraName: "Al-Ahqaf",
        numberOfVerses: 35,
        indexOfSura: 45),
    SuraModel(
        arSuraName: "محمد",
        enSuraName: "Muhammad",
        numberOfVerses: 38,
        indexOfSura: 46),
    SuraModel(
        arSuraName: "الفتح",
        enSuraName: "Al-Fath",
        numberOfVerses: 29,
        indexOfSura: 47),
    SuraModel(
        arSuraName: "الحجرات",
        enSuraName: "Al-Hujurat",
        numberOfVerses: 18,
        indexOfSura: 48),
    SuraModel(
        arSuraName: "ق",
        enSuraName: "Qaf",
        numberOfVerses: 45,
        indexOfSura: 49),
    SuraModel(
        arSuraName: "الذاريات",
        enSuraName: "Adh-Dhariyat",
        numberOfVerses: 60,
        indexOfSura: 50),
    SuraModel(
        arSuraName: "الطور",
        enSuraName: "At-Tur",
        numberOfVerses: 49,
        indexOfSura: 51),
    SuraModel(
        arSuraName: "النجم",
        enSuraName: "An-Najm",
        numberOfVerses: 62,
        indexOfSura: 52),
    SuraModel(
        arSuraName: "القمر",
        enSuraName: "Al-Qamar",
        numberOfVerses: 55,
        indexOfSura: 53),
    SuraModel(
        arSuraName: "الرحمن",
        enSuraName: "Ar-Rahman",
        numberOfVerses: 78,
        indexOfSura: 54),
    SuraModel(
        arSuraName: "الواقعة",
        enSuraName: "Al-Waqi'a",
        numberOfVerses: 96,
        indexOfSura: 55),
    SuraModel(
        arSuraName: "الحديد",
        enSuraName: "Al-Hadid",
        numberOfVerses: 29,
        indexOfSura: 56),
    SuraModel(
        arSuraName: "المجادلة",
        enSuraName: "Al-Mujadila",
        numberOfVerses: 22,
        indexOfSura: 57),
    SuraModel(
        arSuraName: "الحشر",
        enSuraName: "Al-Hashr",
        numberOfVerses: 24,
        indexOfSura: 58),
    SuraModel(
        arSuraName: "الممتحنة",
        enSuraName: "Al-Mumtahina",
        numberOfVerses: 13,
        indexOfSura: 59),
    SuraModel(
        arSuraName: "الصف",
        enSuraName: "As-Saff",
        numberOfVerses: 14,
        indexOfSura: 60),
    SuraModel(
        arSuraName: "الجمعة",
        enSuraName: "Al-Jumu'a",
        numberOfVerses: 11,
        indexOfSura: 61),
    SuraModel(
        arSuraName: "المنافقون",
        enSuraName: "Al-Munafiqun",
        numberOfVerses: 11,
        indexOfSura: 62),
    SuraModel(
        arSuraName: "التغابن",
        enSuraName: "At-Taghabun",
        numberOfVerses: 18,
        indexOfSura: 63),
    SuraModel(
        arSuraName: "الطلاق",
        enSuraName: "At-Talaq",
        numberOfVerses: 12,
        indexOfSura: 64),
    SuraModel(
        arSuraName: "التحريم",
        enSuraName: "At-Tahrim",
        numberOfVerses: 12,
        indexOfSura: 65),
    SuraModel(
        arSuraName: "الملك",
        enSuraName: "Al-Mulk",
        numberOfVerses: 30,
        indexOfSura: 66),
    SuraModel(
        arSuraName: "القلم",
        enSuraName: "Al-Qalam",
        numberOfVerses: 52,
        indexOfSura: 67),
    SuraModel(
        arSuraName: "الحاقة",
        enSuraName: "Al-Haqqah",
        numberOfVerses: 52,
        indexOfSura: 68),
    SuraModel(
        arSuraName: "المعارج",
        enSuraName: "Al-Ma'arij",
        numberOfVerses: 44,
        indexOfSura: 69),
    SuraModel(
        arSuraName: "نوح",
        enSuraName: "Nuh",
        numberOfVerses: 28,
        indexOfSura: 70),
    SuraModel(
        arSuraName: "الجن",
        enSuraName: "Al-Jinn",
        numberOfVerses: 28,
        indexOfSura: 71),
    SuraModel(
        arSuraName: "المزمل",
        enSuraName: "Al-Muzzammil",
        numberOfVerses: 20,
        indexOfSura: 72),
    SuraModel(
        arSuraName: "المدثر",
        enSuraName: "Al-Muddathir",
        numberOfVerses: 56,
        indexOfSura: 73),
    SuraModel(
        arSuraName: "القيامة",
        enSuraName: "Al-Qiyama",
        numberOfVerses: 40,
        indexOfSura: 74),
    SuraModel(
        arSuraName: "الإنسان",
        enSuraName: "Al-Insan",
        numberOfVerses: 31,
        indexOfSura: 75),
    SuraModel(
        arSuraName: "المرسلات",
        enSuraName: "Al-Mursalat",
        numberOfVerses: 50,
        indexOfSura: 76),
    SuraModel(
        arSuraName: "النبأ",
        enSuraName: "An-Naba",
        numberOfVerses: 40,
        indexOfSura: 77),
    SuraModel(
        arSuraName: "النازعات",
        enSuraName: "An-Nazi'at",
        numberOfVerses: 46,
        indexOfSura: 78),
    SuraModel(
        arSuraName: "عبس",
        enSuraName: "Abasa",
        numberOfVerses: 42,
        indexOfSura: 79),
    SuraModel(
        arSuraName: "التكوير",
        enSuraName: "At-Takwir",
        numberOfVerses: 29,
        indexOfSura: 80),
    SuraModel(
        arSuraName: "الانفطار",
        enSuraName: "Al-Infitar",
        numberOfVerses: 19,
        indexOfSura: 81),
    SuraModel(
        arSuraName: "المطففين",
        enSuraName: "Al-Mutaffifin",
        numberOfVerses: 36,
        indexOfSura: 82),
    SuraModel(
        arSuraName: "الانشقاق",
        enSuraName: "Al-Inshiqaq",
        numberOfVerses: 25,
        indexOfSura: 83),
    SuraModel(
        arSuraName: "البروج",
        enSuraName: "Al-Buruj",
        numberOfVerses: 22,
        indexOfSura: 84),
    SuraModel(
        arSuraName: "الطارق",
        enSuraName: "At-Tariq",
        numberOfVerses: 17,
        indexOfSura: 85),
    SuraModel(
        arSuraName: "الأعلى",
        enSuraName: "Al-A'la",
        numberOfVerses: 19,
        indexOfSura: 86),
    SuraModel(
        arSuraName: "الغاشية",
        enSuraName: "Al-Ghashiya",
        numberOfVerses: 26,
        indexOfSura: 87),
    SuraModel(
        arSuraName: "الفجر",
        enSuraName: "Al-Fajr",
        numberOfVerses: 30,
        indexOfSura: 88),
    SuraModel(
        arSuraName: "البلد",
        enSuraName: "Al-Balad",
        numberOfVerses: 20,
        indexOfSura: 89),
    SuraModel(
        arSuraName: "الشمس",
        enSuraName: "Ash-Shams",
        numberOfVerses: 15,
        indexOfSura: 90),
    SuraModel(
        arSuraName: "الليل",
        enSuraName: "Al-Lail",
        numberOfVerses: 21,
        indexOfSura: 91),
    SuraModel(
        arSuraName: "الضحى",
        enSuraName: "Ad-Duhaa",
        numberOfVerses: 11,
        indexOfSura: 92),
    SuraModel(
        arSuraName: "الشرح",
        enSuraName: "Ash-Sharh",
        numberOfVerses: 8,
        indexOfSura: 93),
    SuraModel(
        arSuraName: "التين",
        enSuraName: "At-Tin",
        numberOfVerses: 8,
        indexOfSura: 94),
    SuraModel(
        arSuraName: "العلق",
        enSuraName: "Al-Alaq",
        numberOfVerses: 19,
        indexOfSura: 95),
    SuraModel(
        arSuraName: "القدر",
        enSuraName: "Al-Qadr",
        numberOfVerses: 5,
        indexOfSura: 96),
    SuraModel(
        arSuraName: "البينة",
        enSuraName: "Al-Bayyina",
        numberOfVerses: 8,
        indexOfSura: 97),
    SuraModel(
        arSuraName: "الزلزلة",
        enSuraName: "Az-Zalzala",
        numberOfVerses: 8,
        indexOfSura: 98),
    SuraModel(
        arSuraName: "العاديات",
        enSuraName: "Al-Adiyat",
        numberOfVerses: 11,
        indexOfSura: 99),
    SuraModel(
        arSuraName: "القارعة",
        enSuraName: "Al-Qari'ah",
        numberOfVerses: 11,
        indexOfSura: 100),
    SuraModel(
        arSuraName: "التكاثر",
        enSuraName: "At-Takathur",
        numberOfVerses: 8,
        indexOfSura: 101),
    SuraModel(
        arSuraName: "العصر",
        enSuraName: "Al-Asr",
        numberOfVerses: 3,
        indexOfSura: 102),
    SuraModel(
        arSuraName: "الهمزة",
        enSuraName: "Al-Humazah",
        numberOfVerses: 9,
        indexOfSura: 103),
    SuraModel(
        arSuraName: "الفيل",
        enSuraName: "Al-Fil",
        numberOfVerses: 5,
        indexOfSura: 104),
    SuraModel(
        arSuraName: "قريش",
        enSuraName: "Quraish",
        numberOfVerses: 4,
        indexOfSura: 105),
    SuraModel(
        arSuraName: "الماعون",
        enSuraName: "Al-Ma'un",
        numberOfVerses: 7,
        indexOfSura: 106),
    SuraModel(
        arSuraName: "الكوثر",
        enSuraName: "Al-Kawthar",
        numberOfVerses: 3,
        indexOfSura: 107),
    SuraModel(
        arSuraName: "الكافرون",
        enSuraName: "Al-Kafirun",
        numberOfVerses: 6,
        indexOfSura: 108),
    SuraModel(
        arSuraName: "النصر",
        enSuraName: "An-Nasr",
        numberOfVerses: 3,
        indexOfSura: 109),
    SuraModel(
        arSuraName: "المسد",
        enSuraName: "Al-Masad",
        numberOfVerses: 5,
        indexOfSura: 110),
    SuraModel(
        arSuraName: "الإخلاص",
        enSuraName: "Al-Ikhlas",
        numberOfVerses: 4,
        indexOfSura: 111),
    SuraModel(
        arSuraName: "الفلق",
        enSuraName: "Al-Falaq",
        numberOfVerses: 5,
        indexOfSura: 112),
    SuraModel(
        arSuraName: "الناس",
        enSuraName: "An-Nas",
        numberOfVerses: 6,
        indexOfSura: 113),
  ];

  static List<HadithModel> hadith = [];

  static List<Widget> hadithComponent = [];
}
