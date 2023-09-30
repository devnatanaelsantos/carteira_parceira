import 'package:carteira_parceira/ui/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //Armazenando a largura e altura da tela do dispositivo
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    //Defindo a largura e altura da imagem do logo
    double logoWidth = (44.44 * screenWidth) / 100;
    double logoHeight = (20 * screenHeight) / 100;
    //Definindo a largura e altura do container1
    double container1Width = screenWidth - 20;
    double container1Height = (39 * screenHeight) / 100;
    //Definindo a larguro e altura do btn de Login
    double btnLoginWidth = screenWidth - 144;
    double btnLoginHeigth = (6 * screenHeight) / 100;
    //Definindo a larguro e altura do btn de Cadastrar-se
    double btnCadastreseWidth = screenWidth - 144;
    double btnCadastreseHeigth = (6 * screenHeight) / 100;
    // Definindo a largura e altura do btn Esqueci a senha
    double btnEsqueceuWidth = (((150 / screenWidth) * 100) * screenWidth) / 100;
    double btnEsqueceuHeigth =
        (((60 / screenHeight) * 100) * screenHeight) / 100;
    //defininfo a largura e altura da caixa de texto Senha
    double txtboxSenhaWidth = screenWidth - 48;
    double txtboxSenhaHeigth = (6 * screenHeight) / 100;
    //definindo a largura e altura da caixa de texto E-mail;
    double txtboxEmailWidth = screenWidth - 48;
    double txtboxEmailHeigth = (6 * screenHeight) / 100;

    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: Stack(
        children: [
          //Logo
          Positioned(
            top: (20 * screenHeight) / 100,
            left: (screenWidth - logoWidth) / 2,
            child: SizedBox(
                width: logoWidth,
                height: logoHeight,
                child: Image.asset('lib/assets/logo.png')),
          ),
          //Container1
          Positioned(
            top: screenHeight - container1Height,
            left: (screenWidth - container1Width) / 2,
            child: Container(
              width: container1Width,
              height: container1Height,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Stack(
                children: [
                  //btn Esqueceu a Senha
                  Positioned(
                    top: container1Height - btnEsqueceuHeigth,
                    left: (container1Width - btnEsqueceuWidth) / 2,
                    child: SizedBox(
                      width: btnEsqueceuWidth,
                      height: btnEsqueceuHeigth,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Esqueceu a senha?\nClique aqui!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFA4A4A4),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //btn Cadastre-se
                  Positioned(
                    top: container1Height - (66 + btnCadastreseHeigth),
                    left: (container1Width - btnCadastreseWidth) / 2,
                    child: SizedBox(
                      height: btnCadastreseHeigth,
                      width: btnCadastreseWidth,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                AppColors.secundarycolor),
                            elevation: MaterialStateProperty.all<double>(8.0),
                            shadowColor: MaterialStateProperty.all<Color>(
                                const Color(0xFFA7A7A7))),
                        child: const Text(
                          'Cadastrar-se',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //btn Login
                  Positioned(
                    top: container1Height -
                        (74 + btnCadastreseHeigth + btnLoginHeigth),
                    left: (container1Width - btnLoginWidth) / 2,
                    child: SizedBox(
                      height: btnLoginHeigth,
                      width: btnLoginWidth,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                AppColors.primarycolor),
                            elevation: MaterialStateProperty.all<double>(8.0),
                            shadowColor: MaterialStateProperty.all<Color>(
                                const Color(0xFFA7A7A7))),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //Caixa de entrada Senha
                  Positioned(
                    top: container1Height -
                        (98 +
                            txtboxSenhaHeigth +
                            btnCadastreseHeigth +
                            btnLoginHeigth),
                    left: (container1Width - txtboxSenhaWidth) / 2,
                    child: SizedBox(
                      height: txtboxSenhaHeigth,
                      width: txtboxSenhaWidth,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFFECECEC),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Senha",
                          hintStyle: const TextStyle(
                              color: Color(0xFF989898), fontSize: 14),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  //Caixa de entrada E-mail
                  Positioned(
                    top: container1Height -
                        (106 +
                            txtboxSenhaHeigth +
                            btnCadastreseHeigth +
                            btnLoginHeigth +
                            txtboxEmailHeigth),
                    left: (container1Width - txtboxEmailWidth) / 2,
                    child: SizedBox(
                      height: txtboxEmailHeigth,
                      width: txtboxEmailWidth,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFFECECEC),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "E-mail",
                          hintStyle: const TextStyle(
                              color: Color(0xFF989898), fontSize: 14),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
