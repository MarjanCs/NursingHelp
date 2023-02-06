import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enfermeria_app/presentation/pages/patrones.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'necesidadesInfo.dart';

class Necesidades extends StatefulWidget {
  Necesidades({Key? key}) : super(key: key);

  @override
  State<Necesidades> createState() => _NecesidadesState();
}

class _NecesidadesState extends State<Necesidades> {
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
        stream:
            FirebaseFirestore.instance.collection('Necesidades_14').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            children: snapshot.data!.docs.map((document) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(16),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NecesidadesInfo(
                              title: document['Title'].toString(),
                            ),
                          ));
                    },
                    child: Card(
                      color: HexColor("#20D0CE"),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Image.network(document['Imagen']),
                                )),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    15.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  document['Title'].toString(),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 500,
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: HexColor("#EDFFFD")),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ));
            }).toList(),
          );
        },
      ),
      //  ],
      // ),
      // )
    );
  }
}
