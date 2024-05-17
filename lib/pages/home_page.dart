import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import "package:Jurado1079/util/recuadros.dart";
import "package:Jurado1079/util/botones.dart";
import "package:Jurado1079/util/list_tile.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xffcf1212),
        child: Icon(
          Icons.add_shopping_cart,
          color: Colors.white,
          size: 32,
        ),
        shape: CircleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          color: Color(0xffEEDEC9),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home, size: 30, color: Color(0xffcf1212)),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings, size: 30, color: Colors.grey),
                  ),
                ]),
          )),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // AppBar fijo
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Innova",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffcf1212),
                        ),
                      ),
                      Text(
                        " Sport",
                        style: TextStyle(fontSize: 26),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add, color: Color(0xffcf1212)),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            // Contenido desplazable
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Imagen
                    Container(
                      width: 300,
                      height: 180,
                      child: PageView(
                        scrollDirection: Axis.horizontal,
                        controller: _controller,
                        children: [
                          MyCuadro(img: "assets/images/innovasport.jpg"),
                          MyCuadro(img: "assets/images/anuncio.jpg"),
                          MyCuadro(img: "assets/images/Muestra.jpg"),
                        ],
                      ),
                    ),

                    SizedBox(height: 25),

                    SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: ExpandingDotsEffect(
                            activeDotColor: Color(0xffcf1212))),
                    SizedBox(height: 40),

                    // 3 botones
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyBoton(
                              icono: "assets/images/gorra1.jpg",
                              botonText: "GorraJordan"),
                          MyBoton(
                              icono: "assets/images/balonnike.jpg",
                              botonText: "Balon-de-futbol"),
                          MyBoton(
                              icono: "assets/images/sudadera1.jpg",
                              botonText: "Sudadera Nike"),
                        ],
                      ),
                    ),

                    SizedBox(height: 40),

                    // Listas
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Column(
                        children: [
                          MyListTile(
                            iconoImg: "assets/images/sucursales.png",
                            tituloTitulo: "Sucursales",
                            tituloSubtitulo: "Conocelar todas",
                          ),
                          MyListTile(
                            iconoImg: "assets/images/servicio-al-cliente.jpg",
                            tituloTitulo: "Contactanos",
                            tituloSubtitulo: "Estamos a tu servicio",
                          ),
                          MyListTile(
                            iconoImg: "assets/images/des.jpg",
                            tituloTitulo: "Descuentos",
                            tituloSubtitulo: "Estamos a tu servicio",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
