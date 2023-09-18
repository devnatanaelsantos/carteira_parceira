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
    //pegando a largura e altura da tela do disp e armazenando na var
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    //Definindo a largura do container1
    double container1Width = screenWidth - 20;
    //Definindo a altura do container1
    double container1Height = (43.25 * screenHeight) / 100;

    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: Stack(
        children: [
          Positioned(
            top: 156,
            left: (screenWidth - 160) / 2,
            child: SizedBox(
                width: 160,
                height: 160,
                child: Image.asset('lib/assets/Icon_256.png')),
          ),
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
                  Positioned(
                    top: container1Height - 60,
                    left: (container1Width - 150) / 2,
                    child: SizedBox(
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
