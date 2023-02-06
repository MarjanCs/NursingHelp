import 'package:enfermeria_app/presentation/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#EDFFFD"),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(1, 20, 20, 10),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                child: RaisedButton(
                  color: HexColor("#125873"),
                  child: Text(
                    "Unirse",
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: HexColor("#FFFFFF")),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(70, 70, 70, 80),
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('assets/logo.png'))),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(1, 20, 1, 10),
                child: Text("Bienvenido A \n NursingHelp",
                    style: GoogleFonts.inter(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: HexColor("#125873"))),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text("Tabla de Contenido",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: HexColor("#125873"))),
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: HexColor("#20D0CE"),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text("Necesidades Basicas",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: HexColor("#125873"))),
          ),
          Container(
            padding: EdgeInsets.all(2),
            child: Text("Virginia Henderso",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: HexColor("#125873"))),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/virginia.png'))),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text("14 Necesidades Basicas",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: HexColor("#125873"))),
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: HexColor("20D0CE"),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text("Patrones Funcionales",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: HexColor("#125873"))),
          ),
          Container(
            padding: EdgeInsets.all(2),
            child: Text("Libro de Enfermeria",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: HexColor("#125873"))),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/patron.png'))),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text("11 Patrones Funcionales",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: HexColor("#125873"))),
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: HexColor("20D0CE"),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text("Manual de Ayuda",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: HexColor("#72CFF3"))),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/manual.png'))),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text("Manuales - Guias - Libros",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: HexColor("#72CFF3"))),
          ),
        ],
      ),
    );
  }
}
