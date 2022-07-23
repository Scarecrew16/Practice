import 'package:flutter/material.dart';
import 'package:movie_ui/common/reusable_widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'information_screen.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  _GalleryScreen createState() => _GalleryScreen();
}

class _GalleryScreen extends State<GalleryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 236, 234, 234),
          appBar: AppBar(
            backgroundColor: Colors.white60,
            elevation: 0,
            toolbarHeight: 75,
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(45))),
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InformationScreen()));
              },
              icon: const Icon(Icons.arrow_back_rounded),
              color: Colors.grey[850],
            ),
            title:
                Text("Photos", style: TextStyle(color: Colors.grey.shade900)),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.all(12),
                child: StaggeredGrid.count(
                  crossAxisCount: 5,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  axisDirection: AxisDirection.down,
                  children: [
                    GalleryImage(
                        Image_URL:
                            'https://es.web.img2.acsta.net/pictures/18/02/28/11/16/3611785.jpg',
                        CrossAxisCell_Count: 3,
                        MainAxisCell_Count: 3),
                    GalleryImage(
                        Image_URL:
                            'https://i.pinimg.com/originals/c0/ba/2c/c0ba2c1c490a613e1fe41b3e7cc9c628.png',
                        CrossAxisCell_Count: 2,
                        MainAxisCell_Count: 2),
                    GalleryImage(
                        Image_URL:
                            'https://media.gq.com.mx/photos/5f5a43c04464f9b88fb2681d/1:1/w_2000,h_2000,c_limit/dune.jpg',
                        CrossAxisCell_Count: 2,
                        MainAxisCell_Count: 2),
                    GalleryImage(
                        Image_URL:
                            'https://media.vanityfair.fr/photos/6141dc55e718198081a1df96/3:4/w_540,h_720,c_limit/Dune.jpeg',
                        CrossAxisCell_Count: 3,
                        MainAxisCell_Count: 4),
                    GalleryImage(
                        Image_URL:
                            'https://images-na.ssl-images-amazon.com/images/I/81JPyuR2XqL.jpg',
                        CrossAxisCell_Count: 2,
                        MainAxisCell_Count: 3),
                    GalleryImage(
                        Image_URL:
                            'https://www.cinepremiere.com.mx/wp-content/uploads/2020/04/CALLMEBYYOURNAME2-1024x559.jpg',
                        CrossAxisCell_Count: 5,
                        MainAxisCell_Count: 3),
                    GalleryImage(
                        Image_URL:
                            'https://media.vogue.es/photos/5d9bdffc082d790008b5f6de/master/w_1600%2Cc_limit/003-MissStevens-TimotheeChalamet-VogueInt-26Sept19-Alamy.jpg',
                        CrossAxisCell_Count: 3,
                        MainAxisCell_Count: 2),
                    GalleryImage(
                        Image_URL:
                            'http://connery.dk/image/crop/3110574/1000/1000.jpg',
                        CrossAxisCell_Count: 2,
                        MainAxisCell_Count: 2),
                    GalleryImage(
                        Image_URL:
                            'https://imagenes.elpais.com/resizer/MJlneVtsFRHk_nNX4DNHG8ed1V4=/980x980/cloudfront-eu-central-1.images.arcpublishing.com/prisa/3M67QKT7V6S3I2DIQOW74HG23M.jpg',
                        CrossAxisCell_Count: 2,
                        MainAxisCell_Count: 2),
                    GalleryImage(
                        Image_URL:
                            'https://media.vogue.es/photos/5d9be2466617790008dbdb66/2:3/w_2560%2Cc_limit/010-TheKing-TimotheeChalamet-VogueInt-26Sept19-Netflix.jpg',
                        CrossAxisCell_Count: 3,
                        MainAxisCell_Count: 4),
                    GalleryImage(
                        Image_URL:
                            'https://i.pinimg.com/564x/b5/6f/ed/b56fedc3e8e0df6331e922c6066561e9.jpg',
                        CrossAxisCell_Count: 2,
                        MainAxisCell_Count: 2),
                    GalleryImage(
                        Image_URL:
                            'https://media.vogue.es/photos/5d9be2b66617790008dbdb68/16:9/w_1920,h_1080,c_limit/009-LittleWomen-TimotheeChalamet-VogueInt-26Sept19-Alamy.jpg',
                        CrossAxisCell_Count: 5,
                        MainAxisCell_Count: 3),
                    GalleryImage(
                        Image_URL:
                            'https://pbs.twimg.com/media/FAe9yQ_XEAQygjs.jpg',
                        CrossAxisCell_Count: 5,
                        MainAxisCell_Count: 5)
                  ],
                )),
          )),
    );
  }
}
