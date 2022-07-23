import 'package:flutter/material.dart';
import 'package:movie_ui/common/reusable_widgets.dart';
import 'package:movie_ui/screens/home_screen.dart';
import 'package:movie_ui/screens/information_screen.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 236, 234, 234),
        appBar: AppBar(
          backgroundColor: Colors.white60,
          elevation: 0,
          toolbarHeight: 75,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(45))),
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            icon: const Icon(Icons.arrow_back_rounded),
            color: Colors.grey[850],
          ),
          title: Text("Cast", style: TextStyle(color: Colors.grey.shade900)),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Cast",
                        style: Theme.of(context).textTheme.headline6)),
                const SizedBox(
                  height: 15,
                ),
                Row(children: const <Widget>[
                  ImageCast(
                      Image_URL:
                          "https://e.snmc.io/i/300/w/17fc0f1c671891c1c0c4c5639a9e2f25/4855023",
                      widthImage: 80),
                  CastCard_ArrowIcon(
                      name: "Guillermo del Toro", character: "Director")
                ]),
                const SizedBox(height: 10),
                Row(children: const <Widget>[
                  ImageCast(
                      Image_URL:
                          "https://www.lahiguera.net/cinemania/actores/bradley_cooper/fotos/29048/bradley_cooper-p.jpg",
                      widthImage: 80),
                  CastCard_ArrowIcon(
                      name: "Bradley Cooper",
                      character: "Stanton 'Stan'Carlisle")
                ]),
                const SizedBox(height: 10),
                Row(children: const <Widget>[
                  ImageCast(
                      Image_URL:
                          "https://img.bekiabelleza.com/looks_belleza/2000/2102-p.jpg",
                      widthImage: 80),
                  CastCard_ArrowIcon(
                      name: "Cate Blanchett", character: "Dr. Lilith Ritter")
                ]),
                const SizedBox(height: 10),
                Row(children: const <Widget>[
                  ImageCast(
                      Image_URL:
                          "https://m.media-amazon.com/images/M/MV5BMTM2NDE3MDk1OF5BMl5BanBnXkFtZTcwNjI1MDY0Nw@@._V1_UY317_CR2,0,214,317_AL_.jpg",
                      widthImage: 80),
                  CastCard_ArrowIcon(name: "Ronney Mara", character: "Molly")
                ]),
                const SizedBox(height: 10),
                Row(children: const <Widget>[
                  ImageCast(
                      Image_URL:
                          "https://www.themoviedb.org/t/p/w138_and_h175_face/lzXRh16qe4HHeBN6tMyw0DHvaMn.jpg",
                      widthImage: 80),
                  CastCard_ArrowIcon(
                      name: "Toni Collette",
                      character: "Zeena 'Zeena the Seer' Krumbein")
                ]),
                const SizedBox(height: 10),
                Row(children: const <Widget>[
                  ImageCast(
                      Image_URL:
                          "https://www.themoviedb.org/t/p/w138_and_h175_face/ui8e4sgZAwMPi3hzEO53jyBJF9B.jpg",
                      widthImage: 80),
                  CastCard_ArrowIcon(
                      name: "Willem Dafoe", character: "Clement 'Clem' Hoatley")
                ]),
                const SizedBox(height: 10),
                Row(children: const <Widget>[
                  ImageCast(
                      Image_URL:
                          "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/nfky6J9ueey1gMdWMNU9k9YdfGP.jpg",
                      widthImage: 80),
                  CastCard_ArrowIcon(name: "Ron Perlman", character: "Bruno")
                ]),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ));
  }
}
