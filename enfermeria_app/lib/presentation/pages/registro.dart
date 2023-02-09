import 'package:enfermeria_app/presentation/pages/necesidades.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Registro extends StatefulWidget {
  Registro({Key? key}) : super(key: key);

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  TextEditingController nombreController = TextEditingController();
  TextEditingController paisController = TextEditingController();
  TextEditingController universidadController = TextEditingController();
  TextEditingController carreraController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool passwordSecret = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#EDFFFD"),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(1, 20, 1, 10),
                child: Image(
                  image: AssetImage(
                    'assets/logo.png',
                  ),
                ),
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
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.fromLTRB(25, 20, 1, 10),
              child: Text("Nombres",
                  style: GoogleFonts.inter(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: HexColor("#20D0CE"))),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(25, 5, 20, 10),
            child: TextField(
              keyboardType: TextInputType.name,
              autocorrect: false,
              enableSuggestions: false,
              decoration: InputDecoration(
                labelText: "Ingrese sus nombres",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              controller: nombreController,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.fromLTRB(25, 20, 1, 10),
              child: Text("Pais",
                  style: GoogleFonts.inter(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: HexColor("#20D0CE"))),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(25, 5, 20, 10),
            child: TextField(
              keyboardType: TextInputType.text,
              autocorrect: false,
              enableSuggestions: false,
              decoration: InputDecoration(
                labelText: "Ingrese su Pais",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              controller: paisController,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.fromLTRB(25, 20, 1, 10),
              child: Text("Universidad",
                  style: GoogleFonts.inter(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: HexColor("#20D0CE"))),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(25, 5, 20, 10),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              enableSuggestions: false,
              decoration: InputDecoration(
                labelText: "Ingrese su Universidad",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              controller: universidadController,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.fromLTRB(25, 20, 1, 10),
              child: Text("Carrera",
                  style: GoogleFonts.inter(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: HexColor("#20D0CE"))),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(25, 5, 20, 10),
            child: TextField(
              keyboardType: TextInputType.text,
              autocorrect: false,
              enableSuggestions: false,
              decoration: InputDecoration(
                labelText: "Ingrese su Carrera",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              controller: carreraController,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.fromLTRB(25, 20, 1, 10),
              child: Text("Correo Electronico (Usuario)",
                  style: GoogleFonts.inter(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: HexColor("#20D0CE"))),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(25, 5, 20, 10),
            child: TextField(
              keyboardType: TextInputType.text,
              autocorrect: false,
              enableSuggestions: false,
              decoration: InputDecoration(
                labelText: "Ingrese su Correo Electronico",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              controller: emailController,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.fromLTRB(25, 20, 1, 10),
              child: Text("Contraseña",
                  style: GoogleFonts.inter(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: HexColor("#20D0CE"))),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(25, 5, 20, 10),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    !passwordSecret ? Icons.visibility_off : Icons.visibility,
                    size: 17,
                  ),
                  onPressed: () {
                    setState(() {
                      passwordSecret = !passwordSecret;
                    });
                  },
                ),
                labelText: "Ingrese su Contraseña",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              autocorrect: false,
              obscureText: passwordSecret,
              enableSuggestions: false,
              controller: passwordController,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                child: Text("Registrarse"),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 0, 183, 196),
                    onPrimary: Colors.white,
                    elevation: 5,
                    shadowColor: Colors.black),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Necesidades()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
