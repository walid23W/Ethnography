import 'package:ethnography/categorylist.dart';
import 'package:ethnography/helpers/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'card.dart';
import 'map.dart';

class ChoiceChipDisplay extends StatefulWidget {
  const ChoiceChipDisplay({Key? key}) : super(key: key);

  @override
  _ChoiceChipDisplayState createState() => _ChoiceChipDisplayState();
}

class _ChoiceChipDisplayState extends State<ChoiceChipDisplay> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(24.0),
          shadowColor: const Color(0x802196F3),
          child: Container(
            width: 380,
            height: 400,
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  //color: new Color(0xffffc107),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.blue,
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Question 1',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),

                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Aidez nous à voir plus clair',
                    style: TextStyle(color: Colors.grey, fontSize: 15.0,fontWeight: FontWeight.bold),
                  ),
                ),
                 const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Situez vos pensées / sentiments',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 25,
                        color: Colors.black),
                    textAlign: TextAlign.center ,
                  ),
                ),
                Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: <Widget>[
                  filterchip1(name: 'Frustration'),
                  filterchip1(name: 'Dépendance'),
                  filterchip1(name: 'Ennui'),
                  filterchip1(name: 'Reves inassouvis'),
                  filterchip1(name: 'Incapacité'),
                  filterchip1(name: 'Insécurité'),
                  filterchip1(name: 'Peur'),
                  filterchip1(name: 'Pression'),
                  ],
                ),
                Wrap(
                  spacing: 50.0,
                  runSpacing: 5.0,
                 children: <Widget>[
                 Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: RaisedButton(
                      color: Colors.blue,
                      child: const Text(
                        'Back',
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => card()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                ),
                   Padding(
                     padding: const EdgeInsets.only(top: 32.0),
                     child: RaisedButton(
                         color: Colors.blue,
                         child: const Text(
                           'Next',
                           style: TextStyle(
                               color: Color(0xffffffff),
                               fontSize: 18.0,
                               fontWeight: FontWeight.bold),
                         ),
                         onPressed: () {
                           Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => ChoiceChipDisplay2()));
                         },
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(30.0))),
                   ),
          ]
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class filterchip1 extends StatefulWidget {

  final String name;

  const filterchip1({Key? key, required this.name}) : super(key: key);

  @override
  _filterchip1 createState() => _filterchip1();
}
class _filterchip1 extends State<filterchip1>{

  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.name),
      labelStyle: const TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),
      selected: _isSelected,
      backgroundColor: Color(0xffededed),
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: AppColors.blue5,
    );
  }
}

/*-------------------------------------*/

class ChoiceChipDisplay2 extends StatefulWidget {
  const ChoiceChipDisplay2({Key? key}) : super(key: key);

  @override
  _ChoiceChipDisplay2State createState() => _ChoiceChipDisplay2State();
}

class _ChoiceChipDisplay2State extends State<ChoiceChipDisplay2> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(24.0),
          shadowColor: const Color(0x802196F3),
          child: Container(
            width: 380,
            height: 400,
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  //color: new Color(0xffffc107),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.blue,
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Question 2',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Aidez nous à cerner votre comportement ',
                    style: TextStyle(color: Colors.grey, fontSize: 15.0,fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'où vous situez vous ?',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 25,
                      color: Colors.black),
                  textAlign: TextAlign.center ,
                  ),
                ),
                Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: <Widget>[
                    filterchip1(name: 'Agressif'),
                    filterchip1(name: 'Esprit rebelle'),
                    filterchip1(name: 'Trouillard'),
                    filterchip1(name: 'Monotone'),
                    filterchip1(name: 'Paresseux'),
                    filterchip1(name: 'Problème de communication'),
                  ],
                ),
                Wrap(
                    spacing: 50.0,
                    runSpacing: 5.0,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: Colors.blue,
                            child: const Text(
                              'Back',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => card()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: Colors.blue,
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChoiceChipDisplay3()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                    ]
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*------------------------------------------------*/

class ChoiceChipDisplay3 extends StatefulWidget {
  const ChoiceChipDisplay3({Key? key}) : super(key: key);

  @override
  _ChoiceChipDisplay3State createState() => _ChoiceChipDisplay3State();
}

class _ChoiceChipDisplay3State extends State<ChoiceChipDisplay3> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(24.0),
          shadowColor: const Color(0x802196F3),
          child: Container(
            width: 380,
            height: 400,
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  //color: new Color(0xffffc107),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.blue,
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Question 3',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Aidez nous à identifier la nature de votre environnement',
                    style: TextStyle(color: Colors.grey, fontSize: 15.0,fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
                    "Comment vous percevez l'entourage ?",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 22,
                        color: Colors.black),
                    textAlign: TextAlign.center ,
                  ),
                ),
                Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: <Widget>[
                    filterchip1(name: 'Mensonges'),
                    filterchip1(name: 'Exclusion sociale'),
                    filterchip1(name: 'Jugement de valeur'),
                    filterchip1(name: 'égocentrisme'),
                    filterchip1(name: 'Espoir'),
                    filterchip1(name: 'Pitié'),
                    filterchip1(name: 'Censure'),
                  ],
                ),
                Wrap(
                    spacing: 50.0,
                    runSpacing: 5.0,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: Colors.blue,
                            child: const Text(
                              'Back',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => card()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: Colors.blue,
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChoiceChipDisplay4()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                    ]
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}


/*----------------------------------------------------------------------------*/

class ChoiceChipDisplay4 extends StatefulWidget {
  const ChoiceChipDisplay4({Key? key}) : super(key: key);

  @override
  _ChoiceChipDisplay4State createState() => _ChoiceChipDisplay4State();
}

class _ChoiceChipDisplay4State extends State<ChoiceChipDisplay4> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(24.0),
          shadowColor: const Color(0x802196F3),
          child: Container(
            width: 380,
            height: 400,
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  //color: new Color(0xffffc107),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.blue,
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Question 4',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Aidez nous à identifier vos réels besoins',
                    style: TextStyle(color: Colors.grey, fontSize: 15.0,fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Allons'y",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 25,
                        color: Colors.black),
                    textAlign: TextAlign.center ,
                  ),
                ),
                Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: <Widget>[
                    filterchip1(name: "Prise d'initiative"),
                    filterchip1(name: 'Soutien'),
                    filterchip1(name: 'Inclusion sociale'),
                    filterchip1(name: 'Stimulation'),
                    filterchip1(name: 'Education'),
                    filterchip1(name: 'Financement'),
                  ],
                ),
                Wrap(
                    spacing: 50.0,
                    runSpacing: 5.0,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: Colors.blue,
                            child: const Text(
                              'Back',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => card()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: Colors.blue,
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => map()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                    ]
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*-------------------------------------------------------------------------------------------------------------------------------------------------------------*/


class ChoiceChipDisplay_map extends StatefulWidget {
  const ChoiceChipDisplay_map({Key? key}) : super(key: key);

  @override
  _ChoiceChipDisplaymap_state createState() => _ChoiceChipDisplaymap_state();
}

class _ChoiceChipDisplaymap_state extends State<ChoiceChipDisplay_map> {

  List<String> chipList = [
    "Online ad",
    "Social Media Compaign",
    "Through Friends"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(24.0),
          shadowColor: const Color(0x802196F3),
          child: Container(
            width: 380,
            height: 400,
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  //color: new Color(0xffffc107),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: AppColors.blue5,
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Awarness 1',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'How did you hear about us?',
                    style: TextStyle(color: Colors.black, fontSize: 18.0 , fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Please check a box',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: <Widget>[
                    choiceChipWidget(chipList),
                  ],
                ),
                Wrap(
                    spacing: 50.0,
                    runSpacing: 5.0,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: AppColors.blue5,
                            child: const Text(
                              'Back',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => map()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: AppColors.blue5,
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChoiceChipDisplay_map2()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                    ]
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
class ChoiceChipDisplay_map2 extends StatefulWidget {
  const ChoiceChipDisplay_map2({Key? key}) : super(key: key);

  @override
  _ChoiceChipDisplaymap_state2 createState() => _ChoiceChipDisplaymap_state2();
}

class _ChoiceChipDisplaymap_state2 extends State<ChoiceChipDisplay_map2> {
  List<String> chipList = [
    "Hesitant","Hesitant Interested",
    "Interested",
    "Exited"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(24.0),
          shadowColor: const Color(0x802196F3),
          child: Container(
            width: 380,
            height: 400,
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  //color: new Color(0xffffc107),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: AppColors.blue5,
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Awarness 2',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'How did you initially feel about us?',
                    style: TextStyle(color: Colors.black, fontSize: 18.0 , fontWeight: FontWeight.bold),

                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Please check a box',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: <Widget>[
                    choiceChipWidget(chipList),
                  ],
                ),
                Wrap(
                    spacing: 50.0,
                    runSpacing: 5.0,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: AppColors.blue5,
                            child: const Text(
                              'Back',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => map()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: AppColors.blue5,
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChoiceChipDisplay_map3()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                    ]
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
class ChoiceChipDisplay_map3 extends StatefulWidget {
  const ChoiceChipDisplay_map3({Key? key}) : super(key: key);

  @override
  _ChoiceChipDisplaymap_state3 createState() => _ChoiceChipDisplaymap_state3();
}

class _ChoiceChipDisplaymap_state3 extends State<ChoiceChipDisplay_map3> {
  List<String> chipList = [
    "Asking previous clients",
    "Website",
    "Comparing prices and features to similar brands"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(24.0),
          shadowColor: const Color(0x802196F3),
          child: Container(
            width: 380,
            height: 400,
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  //color: new Color(0xffffc107),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: AppColors.blue5,
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Consideration 1',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'What made you consider using our services?',
                    style: TextStyle(color: Colors.black, fontSize: 18.0 , fontWeight: FontWeight.bold),

                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Please check a box',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: <Widget>[
                    choiceChipWidget(chipList),
                  ],
                ),
                Wrap(
                    spacing: 50.0,
                    runSpacing: 5.0,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: AppColors.blue5,
                            child: const Text(
                              'Back',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => map()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: AppColors.blue5,
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChoiceChipDisplay_map4()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                    ]
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
class ChoiceChipDisplay_map4 extends StatefulWidget {
  const ChoiceChipDisplay_map4({Key? key}) : super(key: key);

  @override
  _ChoiceChipDisplaymap_state4 createState() => _ChoiceChipDisplaymap_state4();
}

class _ChoiceChipDisplaymap_state4 extends State<ChoiceChipDisplay_map4> {
  List<String> chipList = [
    "Hesitant","Hesitant Interested",
    "Interested",
    "Exited"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(24.0),
          shadowColor: const Color(0x802196F3),
          child: Container(
            width: 380,
            height: 400,
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  //color: new Color(0xffffc107),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: AppColors.blue5,
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Consideration 2',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'How did you feel throughout this experience?',
                    style: TextStyle(color: Colors.black, fontSize: 18.0 , fontWeight: FontWeight.bold),

                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Please check a box',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: <Widget>[
                    choiceChipWidget(chipList),
                  ],
                ),
                Wrap(
                    spacing: 50.0,
                    runSpacing: 5.0,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: AppColors.blue5,
                            child: const Text(
                              'Back',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => map()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: AppColors.blue5,
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChoiceChipDisplay_map5()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                    ]
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
class ChoiceChipDisplay_map5 extends StatefulWidget {
  const ChoiceChipDisplay_map5({Key? key}) : super(key: key);

  @override
  _ChoiceChipDisplaymap_state5 createState() => _ChoiceChipDisplaymap_state5();
}

class _ChoiceChipDisplaymap_state5 extends State<ChoiceChipDisplay_map5> {
  List<String> chipList = [
    "Hesitant","Hesitant Interested",
    "Interested",
    "Exited"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(24.0),
          shadowColor: const Color(0x802196F3),
          child: Container(
            width: 380,
            height: 400,
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  //color: new Color(0xffffc107),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: AppColors.blue5,
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Decision',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'How did you feel when buying the product?',
                    style: TextStyle(color: Colors.black, fontSize: 18.0 , fontWeight: FontWeight.bold),

                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Please check a box',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: <Widget>[
                    choiceChipWidget(chipList),
                  ],
                ),
                Wrap(
                    spacing: 50.0,
                    runSpacing: 5.0,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: AppColors.blue5,
                            child: const Text(
                              'Back',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => map()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: AppColors.blue5,
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChoiceChipDisplay_map6()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                    ]
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
class ChoiceChipDisplay_map6 extends StatefulWidget {
  const ChoiceChipDisplay_map6({Key? key}) : super(key: key);

  @override
  _ChoiceChipDisplaymap_state6 createState() => _ChoiceChipDisplaymap_state6();
}

class _ChoiceChipDisplaymap_state6 extends State<ChoiceChipDisplay_map6> {

  List<String> chipList = [
    "Awful","Frustrating",
    "Decent",
    "Good","Wonderful"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(24.0),
          shadowColor: const Color(0x802196F3),
          child: Container(
            width: 380,
            height: 400,
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  //color: new Color(0xffffc107),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: AppColors.blue5,
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Service',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'How did you find our service while and after buying the product?',
                    style: TextStyle(color: Colors.black, fontSize: 18.0 , fontWeight: FontWeight.bold),

                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Please check a box',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: <Widget>[
                    choiceChipWidget(chipList),
                  ],
                ),
                Wrap(
                    spacing: 50.0,
                    runSpacing: 5.0,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: AppColors.blue5,
                            child: const Text(
                              'Back',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => map()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: RaisedButton(
                            color: AppColors.blue5,
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChoiceChipDisplay_map7()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                    ]
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
class ChoiceChipDisplay_map7 extends StatefulWidget {
  const ChoiceChipDisplay_map7({Key? key}) : super(key: key);

  @override
  _ChoiceChipDisplaymap_state7 createState() => _ChoiceChipDisplaymap_state7();
}

class _ChoiceChipDisplaymap_state7 extends State<ChoiceChipDisplay_map7> {
  List<String> chipList = [
    "Yes","No"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
         child: Material(
           color: Colors.white,
           elevation: 14.0,
           borderRadius: BorderRadius.circular(24.0),
           shadowColor: const Color(0x802196F3),
           child: Container(
              width: 380,
              height: 400,
              child: Column(
                  children: <Widget>[
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    //color: new Color(0xffffc107),
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                     color: AppColors.blue5,
                      ),
                      child: const Align(
                         alignment: Alignment.center,
                         child: Text(
                         'loyalty',
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                       ),
                   ),
                ),
                  const Padding(
                  padding: EdgeInsets.all(8.0),
                     child: Text(
                        'Are you considering making another purchase or recommending our service to other people?',
                          style: TextStyle(color: Colors.black, fontSize: 18.0 , fontWeight: FontWeight.bold),
                         ),
                     ),
                    const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                          'Please check a box',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal),
                            ),
                           ),
                     Wrap(
                      spacing: 5.0,
                      runSpacing: 5.0,
                      children: <Widget>[
                        choiceChipWidget(chipList),
                      ],
                     ),
                     Wrap(
                      spacing: 50.0,
                      runSpacing: 5.0,
                      children: <Widget>[
                        Padding(
                           padding: const EdgeInsets.only(top: 32.0),
                            child: RaisedButton(
                              color: AppColors.blue5,
                                child: const Text(
                                'Back',
                                     style: TextStyle(
                                     color: Color(0xffffffff),
                                     fontSize: 18.0,
                                     fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {
                                      Navigator.push(
                                             context,
                                        MaterialPageRoute(
                                    builder: (context) => map()));
                                  },
                                 shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0))),
                               ),
                           Padding(
                             padding: const EdgeInsets.only(top: 32.0),
                                  child: RaisedButton(
                                    color: AppColors.blue5,
                                      child: const Text(
                                          'Next',
                                              style: TextStyle(
                                       color: Color(0xffffffff),
                                     fontSize: 18.0,
                                     fontWeight: FontWeight.bold),
                                        ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                       MaterialPageRoute(
                                           builder: (context) => categorylist()));
                                       },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0))),
                                   ),
                           ]
                       ),

                      ]


                 )
            )

        )
    )
    );
  }
}

/*----------------------------------------*/

class choiceChipWidget extends StatefulWidget {
  final List<String> reportList;

  choiceChipWidget(this.reportList);

  @override
  _choiceChipWidgetState createState() => new _choiceChipWidgetState();
}

class _choiceChipWidgetState extends State<choiceChipWidget> {
  String selectedChoice = "";

  _buildChoiceList() {
    List<Widget> choices = [] ;
    widget.reportList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          label: Text(item),
          labelStyle: const TextStyle(
              color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          backgroundColor: Color(0xffededed),
          selectedColor: AppColors.blue5,
          selected: selectedChoice == item,
          onSelected: (selected) {
            setState(() {
              selectedChoice = item;
            });
          },
        ),
      ));
    });
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}