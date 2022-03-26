import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final seafoamGreen =  Color.fromRGBO(211, 255, 221, 1);
  final lavendar = Color.fromRGBO(244, 240, 255,5);
  final darkPurp = Color.fromRGBO(170, 150, 218, 5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lavendar,
      appBar: AppBar(
        title: Text('Profile Page'),
        backgroundColor: darkPurp,
        elevation: 5,
        actions: <Widget>[
          TextButton.icon(
            onPressed: () {
              print('user willbe logged out');
              //await auth.logOut();
              //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));

            },
            icon: const Icon(Icons.logout, color: Colors.white,),
            label: const Text("Logout", style: TextStyle(color: Colors.white),),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10,15.0, 10, 10),
            child: ConstrainedBox(
              //color: Colors.transparent,
              constraints: BoxConstraints (maxHeight: 300, maxWidth: 400),
              child: Card(
                semanticContainer: true,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                      'https://media4.giphy.com/media/l044ryXnF70Al3sMts/giphy.gif?cid=ecf05e47mcv2jdnrysc57b006jmygrcv27bgw1opoj0nlovc&rid=giphy.gif&ct=g',
                    fit: BoxFit.scaleDown,

                  ),
                ),
              ),
            ),
          ),
            Row(
              children: <Widget>[
                SizedBox(width: 20,),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40,
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage('https://w.wallhaven.cc/full/76/wallhaven-76g6p9.jpg'),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,15,20,20),
                  child: Text(
                      "Allesandra Goldenburg",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
              child: Card(
                elevation: 5,
                child: Card(
                  color: darkPurp,
                  child: InkWell(
                    splashColor: lavendar,
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: SizedBox(
                      width: 345,
                      height: 100,
                      child: Center(
                        child: Text(
                          // limit is 134 chars
                             'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Id semper.',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                //shape: ,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(90, 10, 20, 10),
              child: Row(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      print('jello');
                    },
                    child: Text('Edit'),
                    style: ElevatedButton.styleFrom(
                      primary: darkPurp,
                      elevation: 8,
                    ),
                  ),
                  SizedBox(width: 30,),
                  ElevatedButton(
                    onPressed: () {
                      print('Useless');
                    },
                    child: Text('Delete Account'),
                    style: ElevatedButton.styleFrom(
                      primary: darkPurp,
                      elevation: 8,
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
