import 'package:flutter/material.dart';
import 'package:movie_ui/common/reusable_widgets.dart';
import 'listview_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 234, 234),
      body: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
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
                              "https://cinembrollos.files.wordpress.com/2021/12/nightmare_alley_ver12.jpg")),
                    ),
                  )
                ],
              )),
          Row(
            children: <Widget>[
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(height: 10),
                          Row(
                            children: <Widget>[
                              Image(
                                  image: NetworkImage(
                                      "https://img.icons8.com/ios/500/imdb.png"),
                                  height: 50.0),
                              SizedBox(width: 5),
                              Text(
                                "7.0",
                                style: TextStyle(color: Color(0xFF9A9BB2)),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "Nightmare Alley",
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              //Checar esto
                              Spacer(),
                              Icon(
                                Icons.bookmark_outline_sharp,
                                size: 30.0,
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text("Crime,",
                                      style: TextStyle(
                                          color: Color(0xFF9A9BB2),
                                          fontSize: 12)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("Drama,",
                                      style: TextStyle(
                                          color: Color(0xFF9A9BB2),
                                          fontSize: 12)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("Suspense",
                                      style: TextStyle(
                                          color: Color(0xFF9A9BB2),
                                          fontSize: 12)),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text("USA 2021/",
                                      style: TextStyle(
                                          color: Color(0xFF9A9BB2),
                                          fontSize: 12)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("2h 30min/",
                                      style: TextStyle(
                                          color: Color(0xFF9A9BB2),
                                          fontSize: 12)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("R",
                                      style: TextStyle(
                                          color: Color(0xFF9A9BB2),
                                          fontSize: 12))
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 150,
                                  height: 60,
                                  child: OutlinedButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(15),
                                                      bottomLeft:
                                                          Radius.circular(
                                                              15)))),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.white)),
                                      onPressed: null,
                                      child: Text('Similar to',
                                          style: TextStyle(
                                              color: Color(0xFF9A9BB2)))),
                                ),
                                SizedBox(
                                  width: 150,
                                  height: 60,
                                  child: OutlinedButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  15),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15)))),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Color.fromARGB(
                                                      255, 43, 25, 238))),
                                      onPressed: null,
                                      child: Text(
                                        'Details',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                )
                              ]),
                          SizedBox(height: 60),
                          Column(
                            children: <Widget>[
                              Row(children: <Widget>[
                                Text("About:",
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                    textAlign: TextAlign.right)
                              ]),
                              SizedBox(height: 10),
                              SizedBox(
                                  width: 500,
                                  child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        'An ambitious carny, with a talent for manipulating people with a few well-chosen words, becomes entangled with a psychiatrist who is even more dangerous than he is.',
                                        style: TextStyle(fontSize: 13),
                                        textAlign: TextAlign.justify,
                                      ))),
                              SizedBox(height: 30),
                              Row(children: <Widget>[
                                Text("Starring",
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                    textAlign: TextAlign.right),
                                SizedBox(width: 250),
                                TextButton(
                                    style: TextButton.styleFrom(
                                        primary:
                                            Color.fromRGBO(154, 155, 178, 1),
                                        textStyle: const TextStyle(
                                          fontSize: 12,
                                        )),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ListViewScreen()));
                                    },
                                    child: const Text('Full Cast')),
                                Icon(
                                  Icons.keyboard_arrow_right_outlined,
                                  color: Color(0xFF9A9BB2),
                                  size: 15.0,
                                )
                              ]),
                            ],
                          ),
                          Column(children: <Widget>[
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: const <Widget>[
                                  ImageCast(
                                      Image_URL:
                                          "https://www.lahiguera.net/cinemania/actores/bradley_cooper/fotos/29048/bradley_cooper-p.jpg",
                                      widthImage: 90),
                                  CastCard(
                                      character: "Stanton 'Stan' Carlisle",
                                      name: "Bradley Cooper"),
                                  ImageCast(
                                      Image_URL:
                                          "https://www.lahiguera.net/cinemania/actores/cate_blanchett/fotos/28747/cate_blanchett-p.jpg",
                                      widthImage: 90),
                                  CastCard(
                                      character: "Dr. Lilith Ritter",
                                      name: "Cate Blanchett"),
                                  ImageCast(
                                      Image_URL:
                                          "https://m.media-amazon.com/images/M/MV5BMTM2NDE3MDk1OF5BMl5BanBnXkFtZTcwNjI1MDY0Nw@@._V1_UY317_CR2,0,214,317_AL_.jpg",
                                      widthImage: 90),
                                  CastCard(
                                      character: "Molly", name: "Ronney Mara")
                                ],
                              ),
                            )
                          ]),
                          const SizedBox(height: 30),
                          Row(children: <Widget>[
                            Text("Gallery",
                                style: Theme.of(context).textTheme.headline6,
                                textAlign: TextAlign.right),
                            const SizedBox(width: 190),
                            TextButton(
                                style: TextButton.styleFrom(
                                    textStyle: const TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF9A9BB2))),
                                onPressed: null,
                                child: const Text('Nghtmare Alley')),
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
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: const Image(
                                        image: NetworkImage(
                                            "https://pics.filmaffinity.com/Nightmare_Alley-814041616-large.jpg"),
                                        width: 300),
                                  ),
                                  const SizedBox(width: 10),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: const Image(
                                        image: NetworkImage(
                                            "https://pics.filmaffinity.com/Nightmare_Alley-561982910-large.jpg"),
                                        width: 300),
                                  ),
                                  const SizedBox(width: 10),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: const Image(
                                        image: NetworkImage(
                                            "https://pics.filmaffinity.com/Nightmare_Alley-884103040-large.jpg"),
                                        width: 300),
                                  ),
                                ],
                              ),
                            )
                          ])
                        ],
                      ))),
            ],
          ),
        ],
      )),
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.grey),
        BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline_outlined), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.turned_in), label: '')
      ]),
    );
  }
}
