// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:movie_ui/common/reusable_widgets.dart';
import 'package:movie_ui/screens/gallery.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final List<String> headers = <String>[
      'Career',
      'Born',
      'Nicknames',
      'Height'
    ];
    final List<String> info = <String>[
      'Screenwriter',
      'Guadalajara, Jalisco; 9 de octubre de 1964)',
      'Guillermo del toro',
      '5′ 10 (1.78m)'
    ];
    final List<String> movies = <String>[
      'Pinocchio',
      'Nightmare Alley',
      'The shape of water',
      'Crimson Peak',
      'The book of life',
      'Pacific Rim',
      'Rise of the guardians',
      'Hellboy 2: the golden army',
      'Pan’s labrynth',
      'Hellboy',
      'Blade 2'
    ];
    final List<String> movie_year = <String>[
      '2022',
      '2021',
      '2017',
      '2015',
      '2014',
      '2013',
      '2012',
      '2008',
      '2006',
      '2004',
      '2002'
    ];
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 236, 234, 234),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Container(
                height: size.height * 0.75,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.75 - 20,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(offset: Offset(0, 5), blurRadius: 50)
                        ],
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://es.wikipedia.org/wiki/Guillermo_del_Toro#/media/Archivo:Guillermo_del_Toro_in_2017.jpg")),
                      ),
                    ),
                  ],
                )),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: const Text("Guillermo del Toro Gómez",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold))),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("57 years old",
                        style:
                            TextStyle(color: Color(0xFF9A9BB2), fontSize: 20)),
                  ),
                  const SizedBox(height: 25),
                  Row(children: <Widget>[
                    Text("Bio", style: Theme.of(context).textTheme.headline6),
                    Spacer(),
                    TextButton(
                        style: TextButton.styleFrom(
                            primary: Color.fromRGBO(154, 155, 178, 1),
                            textStyle: const TextStyle(fontSize: 12)),
                        onPressed: null,
                        child: const Text('Full Bio')),
                    const Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Color(0xFF9A9BB2),
                      size: 15.0,
                    )
                  ]),
                  const SizedBox(
                      width: 500,
                      child: Text(
                        'Del Toro was born in Guadalajara, Jalisco, Mexico, the son of Guadalupe Gómez, an actress, and Federico del Toro Torres, a used car dealer, both of Spanish origin. He grew up in a strictly Catholic home. Del Toro studied at the Centro de Investigación y Estudios Cinematográficos at the University of Guadalajara. Creative from an early age, he was marked by an extraordinary experience, a lucid dream in which he remembers seeing a Faun coming out from behind his watch and monsters walking under his green carpet. Terrified but eager to go to the bathroom, Del Toro offered them a deal: if they let him go pee, he would be their friend for life. ... ',
                        style: TextStyle(fontSize: 13),
                        textAlign: TextAlign.justify,
                      )),
                  const SizedBox(height: 25),
                  const LeftAlingTitle(title: 'Information'),
                  Card(
                      elevation: 0,
                      color: Colors.white,
                      child: SizedBox(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                                width: 400,
                                height: 250,
                                child: ListView.separated(
                                  itemCount: headers.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                        height: 40,
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text('${headers[index]}',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF9A9BB2),
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w500))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text('${info[index]}',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w700)))
                                          ],
                                        ));
                                  },
                                  separatorBuilder:
                                      (BuildContext context, int index) =>
                                          const Divider(),
                                )),
                          ],
                        ),
                      ))),
                  const SizedBox(height: 25),
                  Row(children: <Widget>[
                    Text("Photos",
                        style: Theme.of(context).textTheme.headline6),
                    Spacer(),
                    TextButton(
                        style: TextButton.styleFrom(
                            primary: Color.fromRGBO(154, 155, 178, 1),
                            textStyle: const TextStyle(fontSize: 12)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GalleryScreen()));
                        },
                        child: const Text('More Photos')),
                    const Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Color(0xFF9A9BB2),
                      size: 15.0,
                    )
                  ]),
                  Column(children: <Widget>[
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const <Widget>[
                          ImageCast(
                              Image_URL:
                                  "https://es.wikipedia.org/wiki/Guillermo_del_Toro#/media/Archivo:Guillermo_del_Toro_(Guadalajara).jpg",
                              widthImage: 150),
                          SizedBox(width: 10),
                          ImageCast(
                              Image_URL:
                                  "https://www.alohacriticon.com/wp-content/uploads/2015/10/guillermo-del-toro-mujer-fotos.jpg",
                              widthImage: 150),
                          SizedBox(width: 10),
                          ImageCast(
                              Image_URL:
                                  "https://www.alohacriticon.com/wp-content/uploads/elcriticonfotos/deltorofauno.jpg",
                              widthImage: 150),
                          SizedBox(width: 10),
                          ImageCast(
                              Image_URL:
                                  "https://www.infobae.com/new-resizer/_0Bqdi308SK8VHpQbf50HQVNvI0=/768x576/filters:format(webp):quality(85)/cloudfront-us-east-1.images.arcpublishing.com/infobae/BZK7ILKNMZGM7BJ3BB367TN4WU.jpg",
                              widthImage: 150),
                        ],
                      ),
                    )
                  ]),
                  const SizedBox(height: 25),
                  const LeftAlingTitle(title: 'Filmography'),
                  Card(
                      elevation: 0,
                      color: Colors.white,
                      child: SizedBox(
                          child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                                width: 400,
                                height: 250,
                                child: ListView.separated(
                                  itemCount: movies.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                        height: 30,
                                        child: Row(
                                          children: <Widget>[
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text('${movies[index]}',
                                                    style: TextStyle(
                                                        color: Colors.grey[850],
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w500))),
                                            Spacer(),
                                            Text('${movie_year[index]}',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textAlign: TextAlign.end)
                                          ],
                                        ));
                                  },
                                  separatorBuilder:
                                      (BuildContext context, int index) =>
                                          const Divider(),
                                )),
                          ],
                        ),
                      ))),
                ],
              ),
            ),
          ],
        )));
  }
}
