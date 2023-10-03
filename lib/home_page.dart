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
    //double containerMainHeight = screenHeight * 0.436;

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
            SizedBox(
              height: screenHeight * 0.06,
              width: screenWidth - 48,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
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
            SizedBox(
              height: screenHeight * 0.06,
              width: screenWidth - 48,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Senha",
                  hintStyle:
                      const TextStyle(color: Color(0xFF989898), fontSize: 14),
                ),
                obscureText: true,
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
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
