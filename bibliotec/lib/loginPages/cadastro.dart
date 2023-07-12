import 'package:bibliotec/loginPages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text(
                          "Cadastre-se",
                          style: TextStyle(color: Colors.black, fontSize: 28),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(children: [
                    Image.asset("imagens/logoCad.png"),
                  ]),
                ),
                SizedBox(
                  height: 27.0,
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(
                          top: 4,
                          left: 10,
                          right: 10,
                          bottom: 4,
                        ),
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                          color: Color.fromARGB(255, 239, 239, 239),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.person_2_outlined,
                                color: Color(0xFF7B2CBF), size: 30.0),
                            hintText: 'Nome',
                            hintStyle: TextStyle(
                                color: Color(0xff898686), fontSize: 20.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.only(
                          top: 4,
                          left: 10,
                          right: 10,
                          bottom: 4,
                        ),
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                          color: Color.fromARGB(255, 239, 239, 239),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.email_outlined,
                                color: Color(0xFF7B2CBF), size: 30.0),
                            hintText: 'Email',
                            hintStyle: TextStyle(
                                color: Color(0xff898686), fontSize: 20.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.only(
                          top: 4,
                          left: 10,
                          right: 10,
                          bottom: 4,
                        ),
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                          color: Color.fromARGB(255, 239, 239, 239),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.lock_outlined,
                                color: Color(0xFF7B2CBF), size: 30.0),
                            hintText: 'Senha',
                            hintStyle: TextStyle(
                                color: Color(0xff898686), fontSize: 20.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 37),
                      Padding(
                        padding: const EdgeInsets.only(right: 32.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 32.0),
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),);
                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 22),
                                  )),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                top: 4,
                                left: 4,
                                right: 4,
                                bottom: 4,
                              ),
                              width: MediaQuery.of(context).size.width / 2.6,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(13)),
                                color: Color(0xFF7B2CBF),
                              ),
                              child: TextButton(
                                child: Text(
                                  "Cadastre-se",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 19.0),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Cadastro()),
                                  );
                                },
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
          ),
        ),
      ),
    );
  }
}
