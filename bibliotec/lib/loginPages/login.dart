import 'package:bibliotec/loginPages/cadastro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  
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
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 38),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('imagens/partedecima.png'),
                    fit: BoxFit.fill,
                  )),
                ),
                SizedBox(
                  height: 57.0,
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
                            icon: Icon(Icons.email_outlined,
                                color: Color(0xFF7B2CBF), size: 30.0),
                            hintText: 'Email',
                            hintStyle: TextStyle(
                                color: Color(0xff898686), fontSize: 20.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
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
                      SizedBox(height: 17),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 32.0),
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Esqueci minha senha",
                                  style: TextStyle(
                                      color: Color(0xff898686), fontSize: 16),
                                )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 67.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 32.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
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
                                  "Login",
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
