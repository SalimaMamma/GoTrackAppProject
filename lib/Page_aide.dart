import 'package:flutter/material.dart';
import 'noyau/Personne.dart';
import 'PagePrincipale.dart';
import 'ui/Palette.dart';
class Page_aide extends StatefulWidget {
  Personne p ;
  Page_aide(this.p);
  @override
  _Page_aideState createState() => _Page_aideState();
}

class _Page_aideState extends State<Page_aide> {
  static const _popItem = <String>["Modifier les paramétres du compte", "Supprimer le compte"];
  static const _popItem2 = <String>["Modifier les paramétres du compte", "Supprimer le compte"];
  static List<PopupMenuItem<String>> pop = _popItem
      .map((String val) => PopupMenuItem<String>(
    value: val,
    child: Text(val),
  ))
      .toList();
  String value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.violet,
        title: Text(
          "Page d'aide",
          style: TextStyle(
            fontFamily: 'Gilroy-ExtraBold',
            color: Color(0xffe0e5ec),
            fontSize: 26,

            fontStyle: FontStyle.normal,
          ),
          textAlign: TextAlign.start,
        ),
        leading: IconButton(
          alignment: Alignment.topLeft,
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 26,
          ),
          color: Color(0xffe0e5ec),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PagePrincipale(widget.p)),
            );
            print("retour");
          },
        ),

      ),
      body: ListView(
        children: <Widget>[
            SizedBox(height: 20,),
          ListTile(
            title:  Text(
              "Gestion de votre compte",
              style: TextStyle(
                fontFamily: 'Gilroy',
                color: Palette.gris,
                fontSize: 20,

                fontStyle: FontStyle.normal,
              ),
              textAlign: TextAlign.start,
            ),
            trailing: PopupMenuButton(
              onSelected: (String val){
                value = val;
                switch(value){
                  case "Modifier les paramétres du compte":
                  /**
                   * Ici on appelle la methode qui defini l'endroit selectionné comme destination.
                   */
                    print("destionation");
                    break;
                  case "Supprimer le compte":


                }
              },
              itemBuilder:(BuildContext context) => pop,
              //  icon: Icon(Icons.more_vert,size: 30)
            ),
          ),
          ListTile(
            title:  Text(
              "Confidentialté et sécurité",
              style: TextStyle(
                fontFamily: 'Gilroy',
                color: Palette.gris,
                fontSize: 20,

                fontStyle: FontStyle.normal,
              ),
              textAlign: TextAlign.start,
            ),
            trailing: PopupMenuButton(
              onSelected: (String val){
                value = val;
                switch(value){
                  case "Modifier les paramétres du compte":
                  /**
                   * Ici on appelle la methode qui defini l'endroit selectionné comme destination.
                   */
                    print("destionation");
                    break;
                  case "Supprimer le compte":


                }
              },
              itemBuilder:(BuildContext context) => pop,
              //  icon: Icon(Icons.more_vert,size: 30)
            ),
          ),


        ],
      ),

    );
  }
}
