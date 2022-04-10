import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(   // Qui constitue la barre gauche du Menu (le squellete a remplir)
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.deepOrange, Colors.white
                  ]
                )
              ),
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                // backgroundImage: NetworkImage("urlImage"), // S'il s'agit d'une image a recup sur le web
                radius: 40,
                backgroundImage: AssetImage("images/logo.jpg"),
              ),
              CircleAvatar(
                // backgroundImage: NetworkImage("urlImage"), // S'il s'agit d'une image a recup sur le web
                radius: 60,
                backgroundImage: AssetImage("images/logo.jpg"),
              ),
            ],
          )),
          ListTile(
            onTap: (){
              Navigator.pop(context) ;  // Enleve le menu en arriere plan apres le clic
              Navigator.pushNamed(context, "/");
            },    // Quand on Click dessus
            leading: Icon(Icons.home, color: Colors.deepOrange,),
            trailing: Icon(Icons.arrow_right, color: Colors.deepOrange,),
            title: Text("Home", style: TextStyle(fontSize: 22, color: Colors.deepOrange),),
          ),
          Divider(color: Colors.deepOrange,),
          ListTile(
            onTap: (){
              Navigator.pop(context) ;  // Enleve le menu en arriere plan apres le clic
              Navigator.pushNamed(context, "/counter");
            },    // Quand on Click dessus
            leading: Icon(Icons.contacts, color: Colors.deepOrange,),
            trailing: Icon(Icons.arrow_right, color: Colors.deepOrange,),
            title: Text("Counter", style: TextStyle(fontSize: 22, color: Colors.deepOrange),),
          )
        ],
      ),
      ),
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Home page...", style: Theme.of(context).textTheme.headline3,
            ),
            RaisedButton(
              color: Colors.deepOrange,
              onPressed: () {
                Navigator.pushNamed(context, "/counter") ;   // Permet de changer de page tout en inqiaunt un btn retour en haut a gauche
                // Navigator.pushReplacementNamed(context, "/counter") ; // N'indique pas de btn retour, pratique pour des cas de pages login, dc pas de retour apores un login
              },
              child: Text(
                "Next",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}