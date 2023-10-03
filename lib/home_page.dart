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
    //display Width
    double screenWidth = MediaQuery.of(context).size.width;
    //display Height
    double screenHeight = MediaQuery.of(context).size.height;
    //containerMain Heigth
    double containerMainHeight = screenHeight * 0.436;

    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          //logo
          Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.19),
            child: Center(
              child: SizedBox(
                  width: screenWidth * 0.44,
                  height: screenHeight * 0.20,
                  child: Image.asset('lib/assets/images/logo.png')),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: containerMainHeight,
                width: screenWidth - 20,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: containerMainHeight * 0.068),
                    //text box e-mail
                    SizedBox(
                      height: screenHeight * 0.06,
                      width: screenWidth - 48,
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
                    SizedBox(height: containerMainHeight * 0.022),
                    //text box senha
                    SizedBox(
                      height: screenHeight * 0.06,
                      width: screenWidth - 48,
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
                    SizedBox(height: containerMainHeight * 0.068),
                    //button entrar
                    SizedBox(
                      height: screenHeight * 0.06,
                      width: screenWidth - 144,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                AppColors.primarycolor),
                            elevation: MaterialStateProperty.all<double>(8.0),
                            shadowColor: MaterialStateProperty.all<Color>(
                                const Color(0xFFA7A7A7))),
                        child: const Text(
                          'Entrar',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    //button cadastre-se
                    SizedBox(height: containerMainHeight * 0.022),
                    SizedBox(
                      height: screenHeight * 0.06,
                      width: screenWidth - 144,
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
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    //button esqueceu a senha
                    const SizedBox(height: 22),
                    SizedBox(
                      width: 150,
                      height: 60,
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
