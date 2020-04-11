import 'package:flutter/material.dart';
import 'package:merca_libre/view/accion.dart';

import 'accion.dart';

class Inicio extends StatelessWidget {
  final titulo = TextStyle(color: Colors.grey[800], fontSize: 22.0);
  final subtitulo = TextStyle(color: Colors.grey[600], fontSize: 15.0);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        drawer: Drawer(
            child: new ListView(
          children: <Widget>[
            Container(
              child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromRGBO(255, 244, 200, 50)),
                decoration: BoxDecoration(
                  color: Colors.yellow[600],
                ),
                accountName: Text(
                  'Hola Usuario',
                  style: subtitulo,
                ),
                accountEmail: Text('Nivel avanzado',
                    style: TextStyle(color: Colors.grey[800], fontSize: 18.0)),
              ),
            ),
            ListTile(
              title: Text('Mercado Pago'),
              leading: Icon(Icons.attach_money),
            ),
            ListTile(
              title: Text('Pagar con codigo QR'),
              leading: Icon(Icons.add_a_photo),
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            ListTile(
              title: Text('Inicio'),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text('Buscar'),
              leading: Icon(Icons.search),
            ),
            ListTile(
              title: Text('Notificaciones'),
              leading: Icon(Icons.notifications),
            ),
            ListTile(
              title: Text('Mis compras'),
              leading: Icon(Icons.add_shopping_cart),
            ),
          ],
        )),
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          elevation: 0,
          title: Text('Producto',
              style: TextStyle(color: Colors.grey[800], fontSize: 19.0)),
          backgroundColor: Colors.yellow[600],
          actions: <Widget>[
            _crearAccion(Icons.favorite_border),
            _crearAccion(Icons.share),
            _crearAccion(Icons.search),
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
          child: Column(
            children: <Widget>[
              new Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow[600],
                  ),
                  child: Gps()),
              _img(),
              _seccion1(),
              _seccion2(),
              _seccion3(),
              _cantidad(),
              _boton(),
              _final()
            ],
          ),
        )));
  }

  Widget _seccion1() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "35 vendidos",
            style: subtitulo,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            "Portatil Acer 53Ip Core I5 8va 1tb+128gb Ssd Gtx 1050 4gb",
            style: titulo,
          ),
          SizedBox(
            height: 6.0,
          ),
          Text(
            "por Acer",
            style: subtitulo,
          ),
        ],
      ),
    );
  }

  Widget _seccion2() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 1.0),
        child: Row(
          children: <Widget>[
            _crearEstrella(Icons.star),
            _crearEstrella(Icons.star),
            _crearEstrella(Icons.star),
            _crearEstrella(Icons.star),
            _crearEstrella(Icons.star),
            Text("12 Opiniones"),
            //
          ],
        ));
  }

  Widget _seccion3() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 1.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "\$ 3.699.000 ",
                style: TextStyle(color: Colors.black, fontSize: 30.0),
              ),
            ],
          ),
          Text("Disponible en 2 dias a partir de tu compra",
              style: TextStyle(color: Colors.orange[700])),
          SizedBox(
            height: 15.0,
          ),
          Column(
            children: <Widget>[
              _envios(),
              Container(
                color: Colors.grey[400],
                height: 1.0,
                width: 255.0,
                child: Column(
                  children: <Widget>[],
                ),
              ),
              _envios2()
            ],
          ),
        ],
      ),
    );
  }

  Widget _crearAccion(IconData icono) {
    return Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          child: Icon(icono, color: Colors.grey[800]),
        ));
  }

  Widget _crearEstrella(IconData icon) {
    return Row(
      children: <Widget>[
        Icon(icon, color: Colors.yellow[600]),
      ],
    );
  }

  Widget _envios() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 1.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              _func_evios(Icons.credit_card, Colors.black),
              Text(" 36x \$ 102.750"),
              SizedBox(
                height: 12.0,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _func_evios(IconData icono, Color colort) {
    return Container(
      child: Ink(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: CircleBorder(),
        ),
        child: IconButton(
          onPressed: null,
          icon: Icon(icono, color: colort),
        ),
      ),
    );
  }

  Widget _envios2() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              _func_evios(Icons.local_shipping, Colors.green),
              Text(" Envio gratis ", style: TextStyle(color: Colors.green)),
              Text(" \$ 14.000",
                  style: TextStyle(decoration: TextDecoration.lineThrough)),

              // Text("Llega entre el 1 y el 3 de abril")
            ],
          ),
          Text(
            "             Llega entre el 1 y el 3 de abril",
            style: subtitulo,
          ),
          Text(
            "             Benefico mercado puntos",
            style: subtitulo,
          ),
        ],
      ),
    );
  }

  Widget _ubication() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(Icons.location_on, color: Colors.black54),
        Text(
          "Enviar Carlos Paz - Cra 9 #25-86 >",
          style: subtitulo,
        ),
      ],
    );
  }

  Container _listimagen(String imagen) {
    return Container(
      height: 398,
      width: 395.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.network(imagen),
          ],
        ),
      ),
    );
  }

  Widget _img() {
    return Container(
      //color: Colors.black,
      height: 280,
      //width: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _listimagen(
              "https://http2.mlstatic.com/portatil-acer-59kv-core-i5-8va-12gb-gtx-1050ti-4gb-win-10-D_NQ_NP_818285-MCO40918067629_022020-F.webp"),
          _listimagen(
              "https://http2.mlstatic.com/portatil-acer-59kv-core-i5-8va-12gb-gtx-1050ti-4gb-win-10-D_NQ_NP_804492-MCO40918067632_022020-F.webp"),
          _listimagen(
            "https://http2.mlstatic.com/portatil-acer-59kv-core-i5-8va-12gb-gtx-1050ti-4gb-win-10-D_NQ_NP_696150-MCO40918067628_022020-F.webp",
          ),
          _listimagen(
            "https://http2.mlstatic.com/portatil-acer-59kv-core-i5-8va-12gb-gtx-1050ti-4gb-win-10-D_NQ_NP_989972-MCO40918067631_022020-F.webp",
          ),
          _listimagen(
            "https://http2.mlstatic.com/portatil-acer-59kv-core-i5-8va-12gb-gtx-1050ti-4gb-win-10-D_NQ_NP_652107-MCO40918067630_022020-F.webp",
          ),
        ],
      ),
    );
  }

  Widget _final() {
    return Container(
      width: 380,
      height: 130,
      padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
      //color: Colors.yellow,
      child: Column(
        children: <Widget>[
          Container(
            //color: Colors.deepOrange,
            child: Row(
              children: <Widget>[
                Container(
                  // color: Colors.black,
                  child: Column(
                    children: <Widget>[
                      Container(
                        // color: Colors.red,
                        padding: EdgeInsets.fromLTRB(9, 8, 9, 7),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.verified_user,
                              color: Colors.black38,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(9, 8, 9, 7),
                        // color: Colors.red,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.redeem, color: Colors.black38),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  //color: Colors.green,
                  child: Column(
                    verticalDirection: VerticalDirection.down,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(2, 5, 45, 5),
                        child: Text(
                          "Compra protegida  ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black54),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(2, 20, 47, 3),
                        child: Text(
                          "Sumas 1499 Mercado Puntos",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black54),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  //color: Colors.indigoAccent,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(29, 5, 20, 3),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.question_answer,
                              color: Colors.black38,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            //color: Colors.black45,
            child: Row(
              children: <Widget>[
                Container(
                  // color: Colors.orange,
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(65, 14, 2, 2),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.favorite_border, color: Colors.blue),
                            Text(
                              "Agregar a favoritos ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 14, 2, 2),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.share,
                              color: Colors.blue,
                            ),
                            Text(
                              "Compartir ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _boton() {
    return Container(
      //color: Colors.black87,
      child: Container(
        margin: EdgeInsets.all(20.0),
        alignment: Alignment.bottomCenter,
        constraints: BoxConstraints.tightForFinite(width: 900),
        padding: EdgeInsets.all(15),
        child: Text(
          "Comprar",
          style: TextStyle(
              fontWeight: FontWeight.w400, color: Colors.white, fontSize: 20),
        ),
        decoration: BoxDecoration(
          color: Colors.blue[600],
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }

  Widget _cantidad() {
    return Container(
      //color: Colors.blue,
      //alignment: Alignment.bottomCenter,
      child: Container(
        color: Colors.white,
        width: 340,
        height: 45,
        padding: EdgeInsets.fromLTRB(13, 4, 5, 2),
        child: Row(
          children: <Widget>[
            Container(
              //color: Colors.green,
              child: Row(
                children: <Widget>[
                  Text(
                    "Cantidad :",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        height: 1,
                        fontSize: 15,
                        color: Colors.grey[600]),
                  ),
                  Text(
                    " 1 ",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        height: 1,
                        fontSize: 15,
                        color: Colors.grey[400]),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(200, 4, 5, 2),
              child: Row(
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios, color: Colors.black12)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
