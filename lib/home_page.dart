import 'package:carteira_parceira/ui/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Variáveis para configuração o botão de visibilidade de senha
  bool obscureText = true;
  IconData? iconPassword = Icons.visibility;

  @override
  Widget build(BuildContext context) {
    //display Width
    double screenWidth = MediaQuery.of(context).size.width;
    //display Height
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            //logo
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.19),
              child: Center(
                child: SizedBox(
                    width: screenWidth * 0.51,
                    height: screenHeight * 0.22,
                    child: Image.asset('lib/assets/images/logo.png')),
              ),
            ),
            SizedBox(height: screenHeight * 0.19),
            //text box e-mail
            SizedBox(
              height: screenHeight * 0.06,
              width: screenWidth - 48,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "E-mail",
                  hintStyle:
                      const TextStyle(color: Color(0xFF989898), fontSize: 14),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            //text box senha
            SizedBox(
              height: screenHeight * 0.06,
              width: screenWidth - 48,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Senha",
                  hintStyle:
                      const TextStyle(color: Color(0xFF989898), fontSize: 14),
                  //configurando botão de visibilidade de senha
                  suffixIcon: IconButton(
                    onPressed: () {
                      if (obscureText == true) {
                        setState(() {
                          obscureText = false;
                          iconPassword = Icons.visibility_off;
                        });
                      } else {
                        setState(() {
                          obscureText = true;
                          iconPassword = Icons.visibility;
                        });
                      }
                    },
                    icon: Icon(iconPassword),
                    color: AppColors.secundarycolor,
                  ),
                ),
                obscureText: obscureText,
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            //button entrar
            SizedBox(
              height: screenHeight * 0.06,
              width: screenWidth - 144,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: const Text(
                  'Entrar',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.primarycolor,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            //button cadastrar-se
            SizedBox(
              height: screenHeight * 0.06,
              width: screenWidth - 144,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      AppColors.secundarycolor),
                ),
                child: const Text(
                  'Cadastrar-se',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            //button esqueceu a senha
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
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
