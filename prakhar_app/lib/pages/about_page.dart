import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:multiselect/multiselect.dart';
import 'package:prakhar_app/widgets/widgets.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final formkey = GlobalKey<FormState>();
  final Education_dropdownlist = [
    'None',
    'Hight School',
    'In College',
    'Diploma',
    'Under Graduate',
    'Graduate',
    'Post Graduate'
  ];
  final Gender_dropdownlist = ["Male", "female", "Non-Binary"];
  final Orientation_dropdownlist = [
    "None",
    "Straight",
    "Asexual",
    "Bisexual",
    "Bicurious",
    "Demisexual",
    "Gay",
    "Lesbian",
    "Pansexual",
    "Queer"
  ];
  final Work_dropdownlist = [
    "None",
    "Architecture",
    "Bussiness",
    "Engineering",
    "Design",
    "Fashion",
    "Finance",
    "Hotel Management",
    "Humanities & Arts",
    "Law",
    "Management",
    "Medicine",
    "Psychology",
    "Science",
    "Other"
  ];
  final Children_dropdownlist = [
    "None",
    "Will have Someday",
    "Want More",
    "Don't want more",
    "Never",
    "Not sure yet"
  ];
  final Drink_dropdownlist = [
    "None",
    "Occasionally",
    "Often",
    "Addict",
    "Never"
  ];
  final Conversation_dropdownlist = [
    "Hit me up with Pick-Up Lines",
    "Start with Introduction",
    "Either one is good"
  ];
  final LookingFor_dropdownlist = [
    "Friends First",
    "Relationship",
    "Casual Dating",
    "Activity Partner",
    "Not Sure"
  ];
  final PoliticalPreferences_dropdownlist = [
    "None",
    "Apolitical",
    "Moderate",
    "Liberal",
    "Conservative",
    "Communist",
    "Socialist"
  ];
  final Pronouns_dropdownlist = [
    "He/Him",
    "She/Her",
    "They/Them",
    "Ze/Zir",
    "Xe/Xim",
    "Co/Co",
    "Ey/Em",
    "Ve/Ver",
    "Per/Per"
  ];
  final Religion_dropdownlist = [
    "None",
    "Agnostic",
    "Atheist",
    "Buddhist",
    "Catholic",
    "Christan",
    "Hindu",
    "Jain",
    "Jewish",
    "Mormon",
    "Muslim",
    "Zoroastrian",
    "Sikh",
    "Spiritual",
    "Other"
  ];
  final Smoke_dropdownlist = [
    "None",
    "Occasionally",
    "Regularly",
    "Chain Smoker",
    "Never"
  ];
  final Workout_dropdownlist = [
    "None",
    "Active",
    "Sometimes",
    "Occasionally",
    "Never"
  ];
  final Zodiac_dropdownlist = [
    'Aquarius',
    'Aries',
    'Cancer',
    'Capricorn',
    'Gemini',
    'Leo',
    'Libra',
    'Pisces',
    'Sagittarius',
    'Scorpio',
    'Taurus',
    'Virgo',
  ];
  final Language_dropdownlist = [
    "Arabic",
    "Bengali",
    "Chinese (Simplified)",
    "Chinese (Traditional)",
    "Czech",
    "Danish",
    "Dutch",
    "English",
    "French",
    "German",
    "Greek",
    "Gujarati",
    "Hebrew",
    "Hindi",
    "Hungarian",
    "Indonesian",
    "Italian",
    "Japanese",
    "Kannada",
    "Korean",
    "Malayalam",
    "Marathi",
    "Nepali",
    "Norwegian",
    "Polish",
    "Portuguese",
    "Punjabi",
    "Romanian",
    "Russian",
    "Serbian",
    "Sindhi",
    "Sinhalese",
    "Spanish",
    "Swahili",
    "Swedish",
    "Tamil",
    "Telugu",
    "Thai",
    "Turkish",
    "Ukrainian",
    "Urdu",
    "Uzbek",
    "Vietnamese",
    "Welsh",
    "Xhosa",
    "Yiddish",
    "Yoruba",
    "Zulu",
  ];
  final interests_dropdownlist = [
    "Traveling",
    "Cooking",
    "Hiking",
    "Yoga",
    "Reading",
    "Fitness",
    "Photography",
    "Painting",
    "Music (playing or listening)",
    "Dancing",
    "Movies",
    "Foodie",
    "Outdoor Adventures",
    "Gaming",
    "Writing",
    "Sports (e.g., soccer, basketball, tennis)",
    "Volunteering",
    "Fashion",
    "Pets",
    "Astronomy",
    "Gardening",
    "Karaoke",
    "DIY Projects",
    "Wine Tasting",
    "Skiing/Snowboarding",
    "Surfing",
    "Meditation",
    "Theater",
    "Art Exhibitions",
    "Collecting (e.g., stamps, coins)",
    "Languages",
    "Tech Enthusiast",
    "Comedy Shows",
    "Salsa Dancing",
    "Board Games",
    "Scuba Diving",
    "Horseback Riding",
    "Motorcycling",
    "Astronomy",
    "Beach Volleyball",
    "Poetry",
    "Wine Making",
    "Archery",
    "Stand-up Comedy",
    "Pottery",
    "Fashion Design",
    "Kayaking",
    "Film Making",
    "Running",
    "History",
  ];
  String? Education_selectedValue;
  String? Gender_selectedValue;
  String? Orientation_selectedValue;
  String? Work_selectedValue;
  String? Children_selectedValue;
  String? Conversation_selectedvalue;
  String? Drink_selectedvalue;
  String? height;
  String? LookingFor_selectedvalue;
  String? PoliticalPreferences_selectedvalue;
  List<String> Pronouns_selectedValues = [];
  String? Religion_selectedvalue;
  String? Smoke_selectedvalue;
  String? Wornkout_selectedvalue;
  String? Zodiac_selectedvalue;
  List<String> Languages_selectedValues = [];
  List<String> interests_selectedValues = [];
  String? LivingIn;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //padding here,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Form(
            //key: formkey,
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //About

            const SizedBox(height: 60, width: 265),
            const Text(
              "About",
              style: TextStyle(
                  fontFamily: 'NunitoSans',
                  fontSize: 20,
                  color: Color.fromARGB(255, 155, 151, 151),
                  fontWeight: FontWeight.bold),
            ),

            const SizedBox(
              height: 20,
              width: 260,
            ),
            Container(
              constraints: const BoxConstraints.expand(
                height: 200.0,
              ),
              padding: const EdgeInsets.all(8.0),
              color: const Color.fromARGB(255, 239, 216, 227),
              alignment: Alignment.topLeft,
              child: TextFormField(
                maxLines: null,
                expands: false,

                keyboardType: TextInputType.multiline,
                decoration: textInputDecoration.copyWith(
                    filled: true,
                    hintText: "Tell them about you.",
                    fillColor: const Color.fromARGB(255, 239, 216, 227),
                    labelStyle: const TextStyle(
                      color: Color.fromARGB(255, 155, 151, 151),
                      fontFamily: 'NunitoSans',
                      fontSize: 20,
                    )),

                maxLength: 200,

                // putting a text limitter
              ),
            ),

            //Basics

            const SizedBox(height: 20, width: 265),
            const Text(
              "Basics",
              style: TextStyle(
                  fontFamily: 'NunitoSans',
                  fontSize: 20,
                  color: Color.fromARGB(255, 155, 151, 151),
                  fontWeight: FontWeight.bold),
            ),

            // Education

            const SizedBox(height: 25, width: 265),
            const SizedBox(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromARGB(255, 239, 216, 227),
                        child: Icon(
                          Icons.school_outlined,
                          size: 30,
                          color: Colors.black,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Education",
                      style: TextStyle(
                          fontFamily: 'NunitoSans',
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ]),
            ),
            //Dropdown button
            DropdownButtonFormField(
                value: Education_selectedValue,
                items: Education_dropdownlist.map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    )).toList(),
                hint: const Text("Add"),
                onChanged: (val) {
                  setState(() {
                    Education_selectedValue = val as String;
                  });
                }),
            //Gender

            const SizedBox(height: 20, width: 265),
            const SizedBox(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromARGB(255, 239, 216, 227),
                        child: Icon(
                          Icons.male_outlined,
                          size: 30,
                          color: Colors.black,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Gender",
                      style: TextStyle(
                          fontFamily: 'NunitoSans',
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w800),
                    ),
                  ]),
            ),
            DropdownButtonFormField(
                value: Gender_selectedValue,
                items: Gender_dropdownlist.map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    )).toList(),
                hint: const Text("Add"),
                onChanged: (val) {
                  setState(() {
                    Gender_selectedValue = val as String;
                  });
                }),

            //Orientation

            const SizedBox(height: 20, width: 265),
            const SizedBox(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromARGB(255, 239, 216, 227),
                        child: Icon(
                          Icons.compass_calibration_outlined,
                          size: 30,
                          color: Colors.black,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Orientation",
                      style: TextStyle(
                          fontFamily: 'NunitoSans',
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w800),
                    ),
                  ]),
            ),
            DropdownButtonFormField(
                value: Orientation_selectedValue,
                items: Orientation_dropdownlist.map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    )).toList(),
                hint: const Text("Add"),
                onChanged: (val) {
                  setState(() {
                    Orientation_selectedValue = val as String;
                  });
                }),

            //Work

            const SizedBox(height: 20, width: 265),
            const SizedBox(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromARGB(255, 239, 216, 227),
                        child: Icon(
                          Icons.work_outline,
                          size: 30,
                          color: Colors.black,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Work",
                      style: TextStyle(
                          fontFamily: 'NunitoSans',
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w800),
                    ),
                  ]),
            ),
            DropdownButtonFormField(
                value: Work_selectedValue,
                items: Work_dropdownlist.map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    )).toList(),
                hint: const Text("Add"),
                onChanged: (val) {
                  setState(() {
                    Work_selectedValue = val as String;
                  });
                }),
            //Additionsl Information

            const SizedBox(height: 20, width: 265),
            const Text(
              "Additional Information",
              style: TextStyle(
                  fontFamily: 'NunitoSans',
                  fontSize: 20,
                  color: Color.fromARGB(255, 155, 151, 151),
                  fontWeight: FontWeight.w800),
            ),

            //Children

            const SizedBox(height: 25, width: 265),
            const SizedBox(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(255, 239, 216, 227),
                      child: Icon(
                        Icons.child_friendly_outlined,
                        size: 30,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Children",
                    style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                ])),
            //Dropdown button
            DropdownButtonFormField(
                value: Children_selectedValue,
                items: Children_dropdownlist.map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    )).toList(),
                hint: const Text("Add"),
                onChanged: (val) {
                  setState(() {
                    Children_selectedValue = val as String;
                  });
                }),

            //Conversation

            const SizedBox(height: 20, width: 265),
            const SizedBox(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(255, 239, 216, 227),
                      child: Icon(
                        Icons.chat_outlined,
                        size: 30,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Conversation",
                    style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                ])),
            DropdownButtonFormField(
                value: Conversation_selectedvalue,
                items: Conversation_dropdownlist.map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    )).toList(),
                hint: const Text("Add"),
                onChanged: (val) {
                  setState(() {
                    Conversation_selectedvalue = val as String;
                  });
                }),

            //Drink

            const SizedBox(height: 20, width: 265),
            const SizedBox(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(255, 239, 216, 227),
                      child: Icon(
                        Icons.wine_bar_outlined,
                        size: 30,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Drink",
                    style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                ])),
            DropdownButtonFormField(
                value: Drink_selectedvalue,
                items: Drink_dropdownlist.map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    )).toList(),
                hint: const Text("Add"),
                onChanged: (val) {
                  setState(() {
                    Drink_selectedvalue = val as String;
                  });
                }),
            //Height

            const SizedBox(height: 20, width: 265),
            const SizedBox(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(255, 239, 216, 227),
                      child: Icon(
                        Icons.height_outlined,
                        size: 30,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Height",
                    style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                ])),

            //taking height as an input
            const SizedBox(height: 10),
            TextFormField(
              decoration: textInputDecoration.copyWith(hintText: "Add"),
              onChanged: (val) {
                setState(() {
                  height = val;
                });
              },
            ),
            //Looking For

            const SizedBox(height: 10, width: 265),
            const SizedBox(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(255, 239, 216, 227),
                      child: Icon(
                        Icons.search_outlined,
                        size: 30,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Looking For",
                    style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                ])),
            DropdownButtonFormField(
                value: LookingFor_selectedvalue,
                items: LookingFor_dropdownlist.map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    )).toList(),
                hint: const Text("Add"),
                onChanged: (val) {
                  setState(() {
                    LookingFor_selectedvalue = val as String;
                  });
                }),

            //Political Preference

            const SizedBox(height: 20, width: 265),
            const SizedBox(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(255, 239, 216, 227),
                      child: Icon(
                        Iconsax.judge,
                        size: 30,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Political Preference",
                    style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                ])),

            DropdownButtonFormField(
                value: PoliticalPreferences_selectedvalue,
                items: PoliticalPreferences_dropdownlist.map(
                    (e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        )).toList(),
                hint: const Text("Add"),
                onChanged: (val) {
                  setState(() {
                    PoliticalPreferences_selectedvalue = val as String;
                  });
                }),
            //Pronouns

            const SizedBox(height: 20, width: 265),
            const SizedBox(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(255, 239, 216, 227),
                      child: Icon(
                        Icons.perm_identity_sharp,
                        size: 30,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Pronouns",
                    style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                ])),
            const SizedBox(height: 10),
            DropDownMultiSelect(
              options: Pronouns_dropdownlist,
              selectedValues: Pronouns_selectedValues,
              hint: const Text("Add"),
              onChanged: (value) {
                setState(() {
                  Pronouns_selectedValues = value;
                });
              },
            ),
            //Religion

            const SizedBox(height: 20, width: 265),
            const SizedBox(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(255, 239, 216, 227),
                      child: Icon(
                        Icons.church_outlined,
                        size: 30,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Religion",
                    style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                ])),
            DropdownButtonFormField(
                value: Religion_selectedvalue,
                items: Religion_dropdownlist.map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    )).toList(),
                hint: const Text("Add"),
                onChanged: (val) {
                  setState(() {
                    Religion_selectedvalue = val as String;
                  });
                }),
            // Smoke

            const SizedBox(height: 20, width: 265),
            const SizedBox(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(255, 239, 216, 227),
                      child: Icon(
                        Icons.smoking_rooms_outlined,
                        size: 30,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Smoke",
                    style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                ])),
            DropdownButtonFormField(
                value: Smoke_selectedvalue,
                items: Smoke_dropdownlist.map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    )).toList(),
                hint: const Text("Add"),
                onChanged: (val) {
                  setState(() {
                    Smoke_selectedvalue = val as String;
                  });
                }),
            //Workout

            const SizedBox(height: 20, width: 265),
            const SizedBox(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(255, 239, 216, 227),
                      child: Icon(
                        Icons.sports_mma_outlined,
                        size: 30,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Workout",
                    style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                ])),
            DropdownButtonFormField(
                value: Wornkout_selectedvalue,
                items: Workout_dropdownlist.map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    )).toList(),
                hint: const Text("Add"),
                onChanged: (val) {
                  setState(() {
                    Wornkout_selectedvalue = val as String;
                  });
                }),
            //Zodiac

            const SizedBox(height: 20, width: 265),
            const SizedBox(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(255, 239, 216, 227),
                      child: Icon(
                        Icons.share,
                        size: 30,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Zodiac",
                    style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                ])),
            DropdownButtonFormField(
                value: Zodiac_selectedvalue,
                items: Zodiac_dropdownlist.map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    )).toList(),
                hint: const Text("Add"),
                onChanged: (val) {
                  setState(() {
                    Zodiac_selectedvalue = val as String;
                  });
                }),
            //Living In

            const SizedBox(height: 20, width: 265),
            const SizedBox(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(255, 239, 216, 227),
                      child: Icon(
                        Icons.location_on_outlined,
                        size: 30,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Living In",
                    style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                ])),
            const SizedBox(height: 10),

            TextFormField(
              decoration: textInputDecoration.copyWith(hintText: "Add"),
              onChanged: (val) {
                setState(() {
                  LivingIn = val;
                });
              },
            ),
            //Languages

            const SizedBox(height: 10, width: 265),
            const Text(
              "Languages",
              style: TextStyle(
                  fontFamily: 'NunitoSans',
                  fontSize: 20,
                  color: Color.fromARGB(255, 155, 151, 151),
                  fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              width: 20,
            ),
            DropDownMultiSelect(
              options: Language_dropdownlist,
              selectedValues: Languages_selectedValues,
              hint: const Text("Add"),
              onChanged: (value) {
                setState(() {
                  Languages_selectedValues = value;
                });
              },
            ),
            //Interests

            const SizedBox(height: 15, width: 265),
            const Text(
              "Interests",
              style: TextStyle(
                  fontFamily: 'NunitoSans',
                  fontSize: 20,
                  color: Color.fromARGB(255, 155, 151, 151),
                  fontWeight: FontWeight.w800),
            ),
            DropDownMultiSelect(
              options: interests_dropdownlist,
              selectedValues: interests_selectedValues,
              hint: const Text("Add"),
              onChanged: (value) {
                setState(() {
                  interests_selectedValues = value;
                });
              },
            ),
          ],
        )),
      ),
    );
  }
}
