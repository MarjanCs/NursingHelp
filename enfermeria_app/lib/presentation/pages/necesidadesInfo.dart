import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enfermeria_app/presentation/pages/patrones.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class NecesidadesInfo extends StatefulWidget {
  String title;
  NecesidadesInfo({required this.title, Key? key}) : super(key: key);

  @override
  State<NecesidadesInfo> createState() => _NecesidadesInfoState();
}

class _NecesidadesInfoState extends State<NecesidadesInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#EDFFFD"),
      appBar: AppBar(
        backgroundColor: HexColor("#20D0CE"),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Necesidades"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(HexColor("#125873")),
                      elevation: MaterialStateProperty.all(0.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(HexColor("#125873")),
                        elevation: MaterialStateProperty.all(0.0)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Patrones()));
                    },
                    child: Text("Patrones")),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Marjan C"),
                      Icon(
                        Icons.person,
                        size: 30,
                      )
                    ],
                  )),
            ],
          )
        ],
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('Necesidades_14')
            .doc("${widget.title}")
            .collection("necesidades_${widget.title}")
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            children: snapshot.data!.docs.map((document) {
              return Column(
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.network(document['ImagenT']),
                      )),
                  Text(
                    document['Titulo'].toString(),
                    style: GoogleFonts.inder(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: HexColor("#9E2B2A"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(document['Titulo2'].toString(),
                          textAlign: TextAlign.left,
                          style: GoogleFonts.inder(
                              fontSize: 18, color: HexColor("#9E2B2A"))),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(document['Descripcion'].toString(),
                          textAlign: TextAlign.left,
                          style: GoogleFonts.inder(
                              fontSize: 18, color: HexColor("#20D0CE"))),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(document['Titulo3'].toString(),
                          textAlign: TextAlign.left,
                          style: GoogleFonts.inder(
                              fontSize: 18, color: HexColor("#9E2B2A"))),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(document['Descripcion2'].toString(),
                          textAlign: TextAlign.left,
                          style: GoogleFonts.inder(
                              fontSize: 18, color: HexColor("#20D0CE"))),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(document['Titulo4'].toString(),
                          textAlign: TextAlign.left,
                          style: GoogleFonts.inder(
                              fontSize: 18, color: HexColor("#9E2B2A"))),
                    ),
                  ),
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: document['Matriz'].length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        style: ListTileStyle.list,
                        subtitle: Text(
                          document['Matriz'][index].toString(),
                          style: GoogleFonts.inder(
                              fontSize: 18, color: HexColor("#20D0CE")),
                          textAlign: TextAlign.left,
                        ),
                      );
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(document['Titulo5'].toString(),
                          textAlign: TextAlign.left,
                          style: GoogleFonts.inder(
                              fontSize: 18, color: HexColor("#9E2B2A"))),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: document['Matriz2'].length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          subtitle: Text(
                            document['Matriz2'][index].toString(),
                            style: GoogleFonts.inder(
                                fontSize: 18, color: HexColor("#20D0CE")),
                            textAlign: TextAlign.left,
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: RaisedButton(
                      elevation: 0,
                      color: HexColor("#EDFFFD"),
                      child: Text(
                        "Patrones Funcionales Relacionados",
                        style: GoogleFonts.inter(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: HexColor("#9E2B2A")),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Patrones()));
                      },
                    ),
                  ),
                ],
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
